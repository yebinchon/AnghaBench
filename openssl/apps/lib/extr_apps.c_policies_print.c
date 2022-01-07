
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509_POLICY_TREE ;


 int BIO_printf (int ,char*,char*) ;
 int * X509_STORE_CTX_get0_policy_tree (int *) ;
 int X509_STORE_CTX_get_explicit_policy (int *) ;
 int X509_policy_tree_get0_policies (int *) ;
 int X509_policy_tree_get0_user_policies (int *) ;
 int bio_err ;
 int nodes_print (char*,int ) ;

void policies_print(X509_STORE_CTX *ctx)
{
    X509_POLICY_TREE *tree;
    int explicit_policy;
    tree = X509_STORE_CTX_get0_policy_tree(ctx);
    explicit_policy = X509_STORE_CTX_get_explicit_policy(ctx);

    BIO_printf(bio_err, "Require explicit Policy: %s\n",
               explicit_policy ? "True" : "False");

    nodes_print("Authority", X509_policy_tree_get0_policies(tree));
    nodes_print("User", X509_policy_tree_get0_user_policies(tree));
}

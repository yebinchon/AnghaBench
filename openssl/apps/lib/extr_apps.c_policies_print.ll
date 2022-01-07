; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_policies_print.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_policies_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Require explicit Policy: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Authority\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"User\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @policies_print(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @X509_STORE_CTX_get0_policy_tree(i32* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @X509_STORE_CTX_get_explicit_policy(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @bio_err, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @BIO_printf(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @X509_policy_tree_get0_policies(i32* %15)
  %17 = call i32 @nodes_print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @X509_policy_tree_get0_user_policies(i32* %18)
  %20 = call i32 @nodes_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32* @X509_STORE_CTX_get0_policy_tree(i32*) #1

declare dso_local i32 @X509_STORE_CTX_get_explicit_policy(i32*) #1

declare dso_local i32 @BIO_printf(i32, i8*, i8*) #1

declare dso_local i32 @nodes_print(i8*, i32) #1

declare dso_local i32 @X509_policy_tree_get0_policies(i32*) #1

declare dso_local i32 @X509_policy_tree_get0_user_policies(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

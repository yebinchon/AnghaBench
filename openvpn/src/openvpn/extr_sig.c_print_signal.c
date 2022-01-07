
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_info {char* signal_text; int source; int signal_received; } ;


 int ASSERT (int ) ;







 int msg (int,char*,...) ;
 int signal_name (int,int) ;

void
print_signal(const struct signal_info *si, const char *title, int msglevel)
{
    if (si)
    {
        const char *type = (si->signal_text ? si->signal_text : "");
        const char *t = (title ? title : "process");
        const char *hs = ((void*)0);
        switch (si->source)
        {
            case 128:
                hs = "soft";
                break;

            case 129:
                hs = "hard";
                break;

            case 130:
                hs = "connection failed(soft)";
                break;

            default:
                ASSERT(0);
        }

        switch (si->signal_received)
        {
            case 133:
            case 132:
                msg(msglevel, "%s[%s,%s] received, %s exiting",
                    signal_name(si->signal_received, 1), hs, type, t);
                break;

            case 134:
            case 131:
                msg(msglevel, "%s[%s,%s] received, %s restarting",
                    signal_name(si->signal_received, 1), hs, type, t);
                break;

            default:
                msg(msglevel, "Unknown signal %d [%s,%s] received by %s", si->signal_received, hs, type, t);
                break;
        }
    }
    else
    {
        msg(msglevel, "Unknown signal received");
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pl_log_level { ____Placeholder_pl_log_level } pl_log_level ;




 int const PL_LOG_INFO ;


__attribute__((used)) static const enum pl_log_level probing_map(enum pl_log_level level)
{
    switch (level) {
    case 129:
        return 130;

    case 130:
    case 128:
        return PL_LOG_INFO;

    default:
        return level;
    }
}

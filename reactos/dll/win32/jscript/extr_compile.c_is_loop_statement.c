
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ statement_type_t ;
typedef int BOOL ;


 scalar_t__ STAT_FOR ;
 scalar_t__ STAT_FORIN ;
 scalar_t__ STAT_WHILE ;

__attribute__((used)) static inline BOOL is_loop_statement(statement_type_t type)
{
    return type == STAT_FOR || type == STAT_FORIN || type == STAT_WHILE;
}

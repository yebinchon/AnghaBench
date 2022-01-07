; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_help.c_print_copyright.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_help.c_print_copyright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1193 x i8] c"PostgreSQL Database Management System\0A(formerly known as Postgres, then as Postgres95)\0A\0APortions Copyright (c) 1996-2019, PostgreSQL Global Development Group\0A\0APortions Copyright (c) 1994, The Regents of the University of California\0A\0APermission to use, copy, modify, and distribute this software and its\0Adocumentation for any purpose, without fee, and without a written agreement\0Ais hereby granted, provided that the above copyright notice and this\0Aparagraph and the following two paragraphs appear in all copies.\0A\0AIN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY FOR\0ADIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING\0ALOST PROFITS, ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS\0ADOCUMENTATION, EVEN IF THE UNIVERSITY OF CALIFORNIA HAS BEEN ADVISED OF THE\0APOSSIBILITY OF SUCH DAMAGE.\0A\0ATHE UNIVERSITY OF CALIFORNIA SPECIFICALLY DISCLAIMS ANY WARRANTIES,\0AINCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY\0AAND FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS\0AON AN \22AS IS\22 BASIS, AND THE UNIVERSITY OF CALIFORNIA HAS NO OBLIGATIONS TO\0APROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_copyright() #0 {
  %1 = call i32 @puts(i8* getelementptr inbounds ([1193 x i8], [1193 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

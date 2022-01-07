; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_auxiliary_functions.c_acado_printHeader.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_auxiliary_functions.c_acado_printHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [182 x i8] c"\0AACADO Toolkit -- A Toolkit for Automatic Control and Dynamic Optimization.\0ACopyright (C) 2008-2015 by Boris Houska, Hans Joachim Ferreau,\0AMilan Vukov and Rien Quirynen, KU Leuven.\0A\00", align 1
@.str.1 = private unnamed_addr constant [423 x i8] c"Developed within the Optimization in Engineering Center (OPTEC) under\0Asupervision of Moritz Diehl. All rights reserved.\0A\0AACADO Toolkit is distributed under the terms of the GNU Lesser\0AGeneral Public License 3 in the hope that it will be useful,\0Abut WITHOUT ANY WARRANTY; without even the implied warranty of\0AMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the\0AGNU Lesser General Public License for more details.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_printHeader() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([423 x i8], [423 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_string_lit.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_string_lit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@mpcf_strfold = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mpc_string_lit() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @mpc_escape()
  %3 = call i32 @mpc_noneof(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = call i32* @mpc_or(i32 2, i32 %2, i32 %3)
  store i32* %4, i32** %1, align 8
  %5 = load i32, i32* @mpcf_strfold, align 4
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @mpc_many(i32 %5, i32* %6)
  %8 = load i32, i32* @free, align 4
  %9 = call i32 @mpc_between(i32 %7, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = call i32* @mpc_expect(i32 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret i32* %10
}

declare dso_local i32* @mpc_or(i32, i32, i32) #1

declare dso_local i32 @mpc_escape(...) #1

declare dso_local i32 @mpc_noneof(i8*) #1

declare dso_local i32* @mpc_expect(i32, i8*) #1

declare dso_local i32 @mpc_between(i32, i32, i8*, i8*) #1

declare dso_local i32 @mpc_many(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_rdp_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-rdp.c_rdp_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rdp_selftest.test1 = internal constant [20 x i8] c"\03\00\00\13\0E\D0\00\00\124\00\02\0F\08\00\02\00\00\00\00", align 16
@rdp_selftest.test2 = internal constant [20 x i8] c"\03\00\00\13\0E\D0\00\00\124\00\03\00\08\00\05\00\00\00\00", align 16
@.str = private unnamed_addr constant [8 x i8] c"NLA-sup\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NLA-unsup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rdp_selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdp_selftest() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @rdp_selftest_item(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @rdp_selftest.test1, i64 0, i64 0), i32 19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %2
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = call i64 @rdp_selftest_item(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @rdp_selftest.test2, i64 0, i64 0), i32 19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  ret i32 %12
}

declare dso_local i64 @rdp_selftest_item(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

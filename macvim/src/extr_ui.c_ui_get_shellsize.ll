; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ui.c_ui_get_shellsize.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ui.c_ui_get_shellsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@Rows = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"columns\00", align 1
@Columns = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_get_shellsize() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mch_get_shellsize()
  store i32 %2, i32* %1, align 4
  %3 = call i32 (...) @check_shellsize()
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @OK, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @Rows, align 4
  %9 = call i32 @set_number_default(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @Columns, align 4
  %11 = call i32 @set_number_default(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %0
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @mch_get_shellsize(...) #1

declare dso_local i32 @check_shellsize(...) #1

declare dso_local i32 @set_number_default(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

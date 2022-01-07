; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_add_reloption_kind.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_add_reloption_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_assigned_kind = common dso_local global i32 0, align 4
@RELOPT_KIND_MAX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"user-defined relation parameter types limit exceeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_reloption_kind() #0 {
  %1 = load i32, i32* @last_assigned_kind, align 4
  %2 = load i32, i32* @RELOPT_KIND_MAX, align 4
  %3 = icmp sge i32 %1, %2
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @ERROR, align 4
  %6 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %7 = call i32 @errcode(i32 %6)
  %8 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @ereport(i32 %5, i32 %8)
  br label %10

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @last_assigned_kind, align 4
  %12 = shl i32 %11, 1
  store i32 %12, i32* @last_assigned_kind, align 4
  %13 = load i32, i32* @last_assigned_kind, align 4
  ret i32 %13
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

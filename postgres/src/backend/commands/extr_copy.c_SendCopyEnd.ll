; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_SendCopyEnd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_SendCopyEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@COPY_NEW_FE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @SendCopyEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SendCopyEnd(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @COPY_NEW_FE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  %17 = call i32 @pq_putemptymessage(i8 signext 99)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = call i32 @CopySendData(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = call i32 @CopySendEndOfRow(%struct.TYPE_7__* %21)
  %23 = call i32 @pq_endcopyout(i32 0)
  br label %24

24:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pq_putemptymessage(i8 signext) #1

declare dso_local i32 @CopySendData(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @CopySendEndOfRow(%struct.TYPE_7__*) #1

declare dso_local i32 @pq_endcopyout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

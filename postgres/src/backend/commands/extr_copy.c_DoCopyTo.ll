; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_DoCopyTo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_DoCopyTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @DoCopyTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoCopyTo(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i64, i64* @whereToSendOutput, align 8
  %15 = load i64, i64* @DestRemote, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = call i32 (...) @PG_TRY()
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @SendCopyBegin(%struct.TYPE_6__* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %28 = call i32 @CopyTo(%struct.TYPE_6__* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = call i32 @SendCopyEnd(%struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = call i32 (...) @PG_CATCH()
  %36 = call i32 @pq_endcopyout(i32 1)
  %37 = call i32 (...) @PG_RE_THROW()
  %38 = call i32 (...) @PG_END_TRY()
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @SendCopyBegin(%struct.TYPE_6__*) #1

declare dso_local i32 @CopyTo(%struct.TYPE_6__*) #1

declare dso_local i32 @SendCopyEnd(%struct.TYPE_6__*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @pq_endcopyout(i32) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

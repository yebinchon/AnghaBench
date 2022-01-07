; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_bitmapset.c_bms_del_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_bitmapset.c_bms_del_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"negative bitmapset member not allowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @bms_del_member(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ERROR, align 4
  %12 = call i32 @elog(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %41

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @WORDNUM(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @BITNUM(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %30
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %27, %17
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %3, align 8
  br label %41

41:                                               ; preds = %39, %16
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %42
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @WORDNUM(i32) #1

declare dso_local i32 @BITNUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPathTarget.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outPathTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"PATHTARGET\00", align 1
@exprs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" :sortgrouprefs\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@cost = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @_outPathTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outPathTarget(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @exprs, align 4
  %8 = call i32 @WRITE_NODE_FIELD(i32 %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @appendStringInfoString(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @list_length(i32 %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @appendStringInfo(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cost, i32 0, i32 1), align 4
  %39 = call i32 @WRITE_FLOAT_FIELD(i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cost, i32 0, i32 0), align 4
  %41 = call i32 @WRITE_FLOAT_FIELD(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @width, align 4
  %43 = call i32 @WRITE_INT_FIELD(i32 %42)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32) #1

declare dso_local i32 @WRITE_FLOAT_FIELD(i32, i8*) #1

declare dso_local i32 @WRITE_INT_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjInitDecompress.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjInitDecompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@errStr = common dso_local global i32 0, align 4
@JMSG_LENGTH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tjInitDecompress(): Memory allocation failure\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"No error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tjInitDecompress() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i64 @malloc(i32 4)
  %4 = inttoptr i64 %3 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %2, align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @errStr, align 4
  %8 = load i32, i32* @JMSG_LENGTH_MAX, align 4
  %9 = call i32 @snprintf(i32 %7, i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %20

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = call i32 @MEMZERO(%struct.TYPE_4__* %11, i32 4)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @JMSG_LENGTH_MAX, align 4
  %17 = call i32 @snprintf(i32 %15, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32* @_tjInitDecompress(%struct.TYPE_4__* %18)
  store i32* %19, i32** %1, align 8
  br label %20

20:                                               ; preds = %10, %6
  %21 = load i32*, i32** %1, align 8
  ret i32* %21
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @MEMZERO(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @_tjInitDecompress(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

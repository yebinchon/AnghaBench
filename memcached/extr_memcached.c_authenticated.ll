; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_authenticated.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_authenticated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@settings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"authenticated() in cmd 0x%02x is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @authenticated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @authenticated(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings, i32 0, i32 1), align 4
  %5 = call i32 @assert(i32 %4)
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 130, label %9
    i32 131, label %9
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %1, %1, %1, %1
  store i32 1, i32* %3, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @settings, i32 0, i32 0), align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %25)
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

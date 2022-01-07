; ModuleID = '/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_php_sockop_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/main/streams/extr_xp_socket.c_php_sockop_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8**)* @php_sockop_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_sockop_cast(%struct.TYPE_4__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @FAILURE, align 4
  store i32 %16, i32* %4, align 4
  br label %54

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %52 [
    i32 128, label %19
    i32 130, label %41
    i32 131, label %41
    i32 129, label %41
  ]

19:                                               ; preds = %17
  %20 = load i8**, i8*** %7, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @fdopen(i32 %25, i32 %28)
  %30 = load i8**, i8*** %7, align 8
  %31 = bitcast i8** %30 to i32**
  store i32* %29, i32** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %22
  %38 = load i32, i32* @FAILURE, align 4
  store i32 %38, i32* %4, align 4
  br label %54

39:                                               ; preds = %19
  %40 = load i32, i32* @SUCCESS, align 4
  store i32 %40, i32* %4, align 4
  br label %54

41:                                               ; preds = %17, %17, %17
  %42 = load i8**, i8*** %7, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8**, i8*** %7, align 8
  %49 = bitcast i8** %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* @SUCCESS, align 4
  store i32 %51, i32* %4, align 4
  br label %54

52:                                               ; preds = %17
  %53 = load i32, i32* @FAILURE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %50, %39, %37, %35, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @fdopen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

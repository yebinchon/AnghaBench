; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_rfc822_attr_matches_excluded_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_rfc822_attr_matches_excluded_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@CERT_ALT_NAME_RFC822_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, i64*)* @rfc822_attr_matches_excluded_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc822_attr_matches_excluded_name(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %8, align 4
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br label %20

20:                                               ; preds = %14, %11
  %21 = phi i1 [ false, %11 ], [ %19, %14 ]
  br i1 %21, label %22, label %50

22:                                               ; preds = %20
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %9, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CERT_ALT_NAME_RFC822_NAME, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %22
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64*, i64** %6, align 8
  %45 = call i32 @rfc822_name_matches(i32 %38, i32 %43, i64* %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %34, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %11

50:                                               ; preds = %20
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @rfc822_name_matches(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

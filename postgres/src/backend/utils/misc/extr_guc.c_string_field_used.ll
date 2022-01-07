; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_string_field_used.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_string_field_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_string = type { i8**, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_string*, i8*)* @string_field_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_field_used(%struct.config_string* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_string*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.config_string* %0, %struct.config_string** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.config_string*, %struct.config_string** %4, align 8
  %9 = getelementptr inbounds %struct.config_string, %struct.config_string* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %7, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.config_string*, %struct.config_string** %4, align 8
  %16 = getelementptr inbounds %struct.config_string, %struct.config_string* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %14, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.config_string*, %struct.config_string** %4, align 8
  %22 = getelementptr inbounds %struct.config_string, %struct.config_string* %21, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13, %2
  store i32 1, i32* %3, align 4
  br label %57

26:                                               ; preds = %19
  %27 = load %struct.config_string*, %struct.config_string** %4, align 8
  %28 = getelementptr inbounds %struct.config_string, %struct.config_string* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %6, align 8
  br label %31

31:                                               ; preds = %52, %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %35, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %34
  store i32 1, i32* %3, align 4
  br label %57

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %6, align 8
  br label %31

56:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %50, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

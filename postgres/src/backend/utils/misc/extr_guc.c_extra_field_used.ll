; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_extra_field_used.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_extra_field_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.config_bool = type { i8* }
%struct.config_int = type { i8* }
%struct.config_real = type { i8* }
%struct.config_string = type { i8* }
%struct.config_enum = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_generic*, i8*)* @extra_field_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extra_field_used(%struct.config_generic* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.config_generic*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.config_generic* %0, %struct.config_generic** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %9 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp eq i8* %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %15 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %62 [
    i32 132, label %17
    i32 130, label %26
    i32 129, label %35
    i32 128, label %44
    i32 131, label %53
  ]

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %20 = bitcast %struct.config_generic* %19 to %struct.config_bool*
  %21 = getelementptr inbounds %struct.config_bool, %struct.config_bool* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp eq i8* %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %90

25:                                               ; preds = %17
  br label %62

26:                                               ; preds = %13
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %29 = bitcast %struct.config_generic* %28 to %struct.config_int*
  %30 = getelementptr inbounds %struct.config_int, %struct.config_int* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %90

34:                                               ; preds = %26
  br label %62

35:                                               ; preds = %13
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %38 = bitcast %struct.config_generic* %37 to %struct.config_real*
  %39 = getelementptr inbounds %struct.config_real, %struct.config_real* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %90

43:                                               ; preds = %35
  br label %62

44:                                               ; preds = %13
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %47 = bitcast %struct.config_generic* %46 to %struct.config_string*
  %48 = getelementptr inbounds %struct.config_string, %struct.config_string* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %90

52:                                               ; preds = %44
  br label %62

53:                                               ; preds = %13
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %56 = bitcast %struct.config_generic* %55 to %struct.config_enum*
  %57 = getelementptr inbounds %struct.config_enum, %struct.config_enum* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %90

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %13, %61, %52, %43, %34, %25
  %63 = load %struct.config_generic*, %struct.config_generic** %4, align 8
  %64 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %6, align 8
  br label %66

66:                                               ; preds = %85, %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %70, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %77, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %69
  store i32 1, i32* %3, align 4
  br label %90

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %6, align 8
  br label %66

89:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %83, %60, %51, %42, %33, %24, %12
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

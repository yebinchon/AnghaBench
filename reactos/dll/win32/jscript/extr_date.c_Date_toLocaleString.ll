; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_toLocaleString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_date.c_Date_toLocaleString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_DATE_EXPECTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@DATE_LONGDATE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32, i32, i32*, i32*)* @Date_toLocaleString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Date_toLocaleString(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_13__, align 4
  %20 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.TYPE_14__* @date_this(i32* %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %15, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = load i32, i32* @JS_E_DATE_EXPECTED, align 4
  %28 = call i32 @throw_type_error(%struct.TYPE_12__* %26, i32 %27, i32* null)
  store i32 %28, i32* %7, align 4
  br label %114

29:                                               ; preds = %6
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @isnan(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32*, i32** %13, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i32* (...) @jsstr_nan()
  %40 = call i32 @jsval_string(i32* %39)
  %41 = load i32*, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* @S_OK, align 4
  store i32 %43, i32* %7, align 4
  br label %114

44:                                               ; preds = %29
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = call i32 @local_time(i32 %47, %struct.TYPE_14__* %48)
  %50 = call i32 @create_systemtime(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = bitcast %struct.TYPE_13__* %14 to i8*
  %53 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 1601
  br i1 %56, label %61, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 9999
  br i1 %60, label %61, label %65

61:                                               ; preds = %57, %44
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @dateobj_to_string(%struct.TYPE_14__* %62, i32* %63)
  store i32 %64, i32* %7, align 4
  br label %114

65:                                               ; preds = %57
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %112

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DATE_LONGDATE, align 4
  %73 = call i32 @GetDateFormatW(i32 %71, i32 %72, %struct.TYPE_13__* %14, i32* null, i8* null, i32 0)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @GetTimeFormatW(i32 %76, i32 0, %struct.TYPE_13__* %14, i32* null, i8* null, i32 0)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = call i32* @jsstr_alloc_buf(i32 %81, i8** %20)
  store i32* %82, i32** %16, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %68
  %86 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %86, i32* %7, align 4
  br label %114

87:                                               ; preds = %68
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DATE_LONGDATE, align 4
  %92 = load i8*, i8** %20, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @GetDateFormatW(i32 %90, i32 %91, %struct.TYPE_13__* %14, i32* null, i8* %92, i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %20, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @GetTimeFormatW(i32 %97, i32 0, %struct.TYPE_13__* %14, i32* null, i8* %101, i32 %102)
  %104 = load i8*, i8** %20, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 32, i8* %108, align 1
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @jsval_string(i32* %109)
  %111 = load i32*, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %87, %65
  %113 = load i32, i32* @S_OK, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %85, %61, %42, %25
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_14__* @date_this(i32*) #1

declare dso_local i32 @throw_type_error(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i64 @isnan(i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_nan(...) #1

declare dso_local i32 @create_systemtime(i32) #1

declare dso_local i32 @local_time(i32, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dateobj_to_string(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @GetDateFormatW(i32, i32, %struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @GetTimeFormatW(i32, i32, %struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

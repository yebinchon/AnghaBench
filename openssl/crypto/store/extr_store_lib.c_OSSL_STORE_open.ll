; ModuleID = '/home/carl/AnghaBench/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_open.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8*, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*)*, i32* (%struct.TYPE_7__*, i8*, i32*, i8*)* }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@STORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Looking up scheme %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Found loader for scheme %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Opened %s => %p\0A\00", align 1
@OSSL_STORE_F_OSSL_STORE_OPEN = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @OSSL_STORE_open(i8* %0, i32* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca [2 x i8*], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  store i64 0, i64* %18, align 8
  %20 = load i64, i64* %18, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %18, align 8
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %20
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @OPENSSL_strlcpy(i8* %23, i8* %24, i32 256)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %27 = call i8* @strchr(i8* %26, i8 signext 58)
  store i8* %27, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %5
  %30 = load i8*, i8** %16, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %16, align 8
  store i8 0, i8* %30, align 1
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %33 = call i64 @strcasecmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8*, i8** %16, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i64, i64* %18, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %18, align 8
  br label %42

42:                                               ; preds = %39, %35
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %44 = load i64, i64* %18, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %18, align 8
  %46 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %44
  store i8* %43, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %29
  br label %48

48:                                               ; preds = %47, %5
  %49 = call i32 (...) @ERR_set_mark()
  store i64 0, i64* %19, align 8
  br label %50

50:                                               ; preds = %90, %48
  %51 = load i32*, i32** %13, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* %19, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp ult i64 %54, %55
  br label %57

57:                                               ; preds = %53, %50
  %58 = phi i1 [ false, %50 ], [ %56, %53 ]
  br i1 %58, label %59, label %93

59:                                               ; preds = %57
  %60 = load i32, i32* @STORE, align 4
  %61 = load i64, i64* %19, align 8
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @OSSL_TRACE1(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call %struct.TYPE_7__* @ossl_store_get0_loader_int(i8* %67)
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %12, align 8
  %69 = icmp ne %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %89

70:                                               ; preds = %59
  %71 = load i32, i32* @STORE, align 4
  %72 = load i64, i64* %19, align 8
  %73 = getelementptr inbounds [2 x i8*], [2 x i8*]* %17, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @OSSL_TRACE1(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32* (%struct.TYPE_7__*, i8*, i32*, i8*)*, i32* (%struct.TYPE_7__*, i8*, i32*, i8*)** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32* %78(%struct.TYPE_7__* %79, i8* %80, i32* %81, i8* %82)
  store i32* %83, i32** %13, align 8
  %84 = load i32, i32* @STORE, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = bitcast i32* %86 to i8*
  %88 = call i32 @OSSL_TRACE2(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %85, i8* %87)
  br label %89

89:                                               ; preds = %70, %59
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %19, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %19, align 8
  br label %50

93:                                               ; preds = %57
  %94 = load i32*, i32** %13, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %125

97:                                               ; preds = %93
  %98 = call %struct.TYPE_8__* @OPENSSL_zalloc(i32 48)
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %14, align 8
  %99 = icmp eq %struct.TYPE_8__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_OPEN, align 4
  %102 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %103 = call i32 @OSSL_STOREerr(i32 %101, i32 %102)
  br label %125

104:                                              ; preds = %97
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 5
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %107, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i32* %111, i32** %113, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = call i32 (...) @ERR_pop_to_mark()
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %6, align 8
  br label %136

125:                                              ; preds = %100, %96
  %126 = call i32 (...) @ERR_clear_last_mark()
  %127 = load i32*, i32** %13, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32 (i32*)*, i32 (i32*)** %131, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = call i32 %132(i32* %133)
  br label %135

135:                                              ; preds = %129, %125
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  br label %136

136:                                              ; preds = %135, %104
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %137
}

declare dso_local i32 @OPENSSL_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ERR_set_mark(...) #1

declare dso_local i32 @OSSL_TRACE1(i32, i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @ossl_store_get0_loader_int(i8*) #1

declare dso_local i32 @OSSL_TRACE2(i32, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @ERR_pop_to_mark(...) #1

declare dso_local i32 @ERR_clear_last_mark(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_vim_to_ruby.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_vim_to_ruby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_17__*, i32, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { %struct.TYPE_15__ }

@Qnil = common dso_local global i8* null, align 8
@VAR_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VAR_NUMBER = common dso_local global i64 0, align 8
@VAR_LIST = common dso_local global i64 0, align 8
@VAR_DICT = common dso_local global i64 0, align 8
@VAR_FLOAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*)* @vim_to_ruby to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vim_to_ruby(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %10 = load i8*, i8** @Qnil, align 8
  store i8* %10, i8** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VAR_STRING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to i8*
  br label %29

29:                                               ; preds = %23, %22
  %30 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %22 ], [ %28, %23 ]
  %31 = call i8* @rb_str_new2(i8* %30)
  store i8* %31, i8** %3, align 8
  br label %133

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VAR_NUMBER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @INT2NUM(i32 %42)
  store i8* %43, i8** %3, align 8
  br label %132

44:                                               ; preds = %32
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VAR_LIST, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  store %struct.TYPE_17__* %54, %struct.TYPE_17__** %4, align 8
  %55 = call i8* (...) @rb_ary_new()
  store i8* %55, i8** %3, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = icmp ne %struct.TYPE_17__* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %5, align 8
  br label %62

62:                                               ; preds = %71, %58
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = icmp ne %struct.TYPE_16__* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i8*, i8** %3, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = call i8* @vim_to_ruby(%struct.TYPE_15__* %68)
  %70 = call i32 @rb_ary_push(i8* %66, i8* %69)
  br label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %5, align 8
  br label %62

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %50
  br label %131

77:                                               ; preds = %44
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VAR_DICT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %130

83:                                               ; preds = %77
  %84 = call i8* (...) @rb_hash_new()
  store i8* %84, i8** %3, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %129

90:                                               ; preds = %83
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %6, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %7, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %8, align 8
  br label %102

102:                                              ; preds = %125, %90
  %103 = load i64, i64* %7, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %102
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %107 = call i32 @HASHITEM_EMPTY(%struct.TYPE_19__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %7, align 8
  %111 = add nsw i64 %110, -1
  store i64 %111, i64* %7, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %113 = call %struct.TYPE_20__* @dict_lookup(%struct.TYPE_19__* %112)
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %9, align 8
  %114 = load i8*, i8** %3, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = call i8* @rb_str_new2(i8* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = call i8* @vim_to_ruby(%struct.TYPE_15__* %121)
  %123 = call i32 @rb_hash_aset(i8* %114, i8* %119, i8* %122)
  br label %124

124:                                              ; preds = %109, %105
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 1
  store %struct.TYPE_19__* %127, %struct.TYPE_19__** %8, align 8
  br label %102

128:                                              ; preds = %102
  br label %129

129:                                              ; preds = %128, %83
  br label %130

130:                                              ; preds = %129, %77
  br label %131

131:                                              ; preds = %130, %76
  br label %132

132:                                              ; preds = %131, %38
  br label %133

133:                                              ; preds = %132, %29
  %134 = load i8*, i8** %3, align 8
  ret i8* %134
}

declare dso_local i8* @rb_str_new2(i8*) #1

declare dso_local i8* @INT2NUM(i32) #1

declare dso_local i8* @rb_ary_new(...) #1

declare dso_local i32 @rb_ary_push(i8*, i8*) #1

declare dso_local i8* @rb_hash_new(...) #1

declare dso_local i32 @HASHITEM_EMPTY(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @dict_lookup(%struct.TYPE_19__*) #1

declare dso_local i32 @rb_hash_aset(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

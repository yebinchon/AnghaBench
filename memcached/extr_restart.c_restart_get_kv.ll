; ModuleID = '/home/carl/AnghaBench/memcached/extr_restart.c_restart_get_kv.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_restart.c_restart_get_kv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__*, i32 }

@cb_stack = common dso_local global %struct.TYPE_4__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"[restart] internal handler for metadata tag not found: %s:\0A\00", align 1
@RESTART_NOTAG = common dso_local global i32 0, align 4
@RESTART_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"[restart] invalid metadata line:\0A\0A%s\0A\00", align 1
@RESTART_BADLINE = common dso_local global i32 0, align 4
@RESTART_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restart_get_kv(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @free(i8* %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @getline(i8** %8, i64* %9, i32 %28)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %132

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  store i8* %32, i8** %12, align 8
  br label %33

33:                                               ; preds = %38, %31
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %12, align 8
  br label %33

41:                                               ; preds = %33
  %42 = load i8*, i8** %12, align 8
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 84
  br i1 %47, label %48, label %79

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cb_stack, align 8
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %10, align 8
  br label %50

50:                                               ; preds = %62, %48
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call i64 @strcmp(i32 %56, i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %10, align 8
  br label %50

66:                                               ; preds = %61, %50
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = icmp eq %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @RESTART_NOTAG, align 4
  store i32 %74, i32* %4, align 4
  br label %137

75:                                               ; preds = %66
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store %struct.TYPE_4__* %76, %struct.TYPE_4__** %78, align 8
  br label %131

79:                                               ; preds = %41
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 75
  br i1 %84, label %85, label %126

85:                                               ; preds = %79
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %13, align 8
  %88 = load i8**, i8*** %6, align 8
  %89 = icmp ne i8** %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i8*, i8** %13, align 8
  %92 = load i8**, i8*** %6, align 8
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %109, %93
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 32
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = load i64, i64* %9, align 8
  %106 = icmp ult i64 %104, %105
  br label %107

107:                                              ; preds = %99, %94
  %108 = phi i1 [ false, %94 ], [ %106, %99 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i8*, i8** %13, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %13, align 8
  br label %94

112:                                              ; preds = %107
  %113 = load i8*, i8** %13, align 8
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %13, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %13, align 8
  %116 = load i8**, i8*** %7, align 8
  %117 = icmp ne i8** %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i8*, i8** %13, align 8
  %120 = load i8**, i8*** %7, align 8
  store i8* %119, i8** %120, align 8
  br label %121

121:                                              ; preds = %118, %112
  %122 = load i8*, i8** %8, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @RESTART_OK, align 4
  store i32 %125, i32* %4, align 4
  br label %137

126:                                              ; preds = %79
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %128)
  %130 = load i32, i32* @RESTART_BADLINE, align 4
  store i32 %130, i32* %4, align 4
  br label %137

131:                                              ; preds = %75
  br label %135

132:                                              ; preds = %25
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %131
  %136 = load i32, i32* @RESTART_DONE, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %126, %121, %69
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

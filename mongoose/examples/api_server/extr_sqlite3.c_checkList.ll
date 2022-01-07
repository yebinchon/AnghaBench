; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_checkList.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_checkList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [57 x i8] c"%d of %d pages missing from overflow list starting at %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get page %d\00", align 1
@PTRMAP_FREEPAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"freelist leaf count too big on page %d\00", align 1
@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32, i8*)* @checkList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkList(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %159, %5
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %9, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %164

31:                                               ; preds = %29
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @checkAppendMsg(%struct.TYPE_8__* %35, i8* %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  br label %164

42:                                               ; preds = %31
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @checkRef(%struct.TYPE_8__* %43, i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %164

49:                                               ; preds = %42
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @sqlite3PagerGet(i32 %52, i32 %53, i32** %14)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @checkAppendMsg(%struct.TYPE_8__* %57, i8* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %164

61:                                               ; preds = %49
  %62 = load i32*, i32** %14, align 8
  %63 = call i64 @sqlite3PagerGetData(i32* %62)
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %15, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %139

67:                                               ; preds = %61
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = call i32 @get4byte(i8* %69)
  store i32 %70, i32* %16, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @checkPtrmap(%struct.TYPE_8__* %78, i32 %79, i32 %80, i32 0, i8* %81)
  br label %83

83:                                               ; preds = %77, %67
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = sdiv i32 %90, 4
  %92 = sub nsw i32 %91, 2
  %93 = icmp sgt i32 %84, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (%struct.TYPE_8__*, i8*, i8*, i32, ...) @checkAppendMsg(%struct.TYPE_8__* %95, i8* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %9, align 4
  br label %138

101:                                              ; preds = %83
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %131, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = load i8*, i8** %15, align 8
  %108 = load i32, i32* %11, align 4
  %109 = mul nsw i32 %108, 4
  %110 = add nsw i32 8, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = call i32 @get4byte(i8* %112)
  store i32 %113, i32* %17, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %106
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @checkPtrmap(%struct.TYPE_8__* %121, i32 %122, i32 %123, i32 0, i8* %124)
  br label %126

126:                                              ; preds = %120, %106
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %128 = load i32, i32* %17, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = call i64 @checkRef(%struct.TYPE_8__* %127, i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %102

134:                                              ; preds = %102
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %134, %94
  br label %159

139:                                              ; preds = %61
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %139
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i8*, i8** %15, align 8
  %151 = call i32 @get4byte(i8* %150)
  store i32 %151, i32* %11, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @checkPtrmap(%struct.TYPE_8__* %152, i32 %153, i32 %154, i32 %155, i8* %156)
  br label %158

158:                                              ; preds = %149, %146, %139
  br label %159

159:                                              ; preds = %158, %138
  %160 = load i8*, i8** %15, align 8
  %161 = call i32 @get4byte(i8* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @sqlite3PagerUnref(i32* %162)
  br label %20

164:                                              ; preds = %56, %48, %34, %29
  ret void
}

declare dso_local i32 @checkAppendMsg(%struct.TYPE_8__*, i8*, i8*, i32, ...) #1

declare dso_local i64 @checkRef(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i64 @sqlite3PagerGet(i32, i32, i32**) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i32 @get4byte(i8*) #1

declare dso_local i32 @checkPtrmap(%struct.TYPE_8__*, i32, i32, i32, i8*) #1

declare dso_local i32 @sqlite3PagerUnref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

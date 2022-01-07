; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqCheckInBufferSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-misc.c_pqCheckInBufferSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i8*, i64, i32 }

@.str = private unnamed_addr constant [41 x i8] c"cannot allocate memory for input buffer\0A\00", align 1
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqCheckInBufferSpace(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ule i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %167

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %16
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = call i32 @memmove(i8* %37, i8* %44, i64 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %34, %29
  br label %77

70:                                               ; preds = %16
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %69
  %78 = load i64, i64* %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ule i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %167

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 %85, 2
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i64, i64* %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ugt i64 %91, %93
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i1 [ false, %87 ], [ %94, %90 ]
  br i1 %96, label %84, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load i64, i64* %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ule i64 %101, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i8* @realloc(i8* %108, i32 %109)
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %3, align 4
  br label %167

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %100, %97
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %136, %121
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 8192
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load i64, i64* %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp ugt i64 %132, %134
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi i1 [ false, %128 ], [ %135, %131 ]
  br i1 %137, label %125, label %138

138:                                              ; preds = %136
  %139 = load i32, i32* %6, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %138
  %142 = load i64, i64* %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ule i64 %142, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i8* @realloc(i8* %149, i32 %150)
  store i8* %151, i8** %7, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %146
  %155 = load i8*, i8** %7, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %3, align 4
  br label %167

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %141, %138
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 5
  %165 = call i32 @printfPQExpBuffer(i32* %164, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %166 = load i32, i32* @EOF, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %162, %154, %113, %82, %15
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

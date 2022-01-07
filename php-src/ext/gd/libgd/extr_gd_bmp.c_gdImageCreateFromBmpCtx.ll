; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_gdImageCreateFromBmpCtx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_gdImageCreateFromBmpCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Numcolours: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Width: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Height: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Planes: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Depth: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Offset: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"1-bit image\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"4-bit image\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"8-bit image\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Direct BMP image\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Unknown bit count\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gdImageCreateFromBmpCtx(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i64 @gdCalloc(i32 1, i32 28)
  %9 = inttoptr i64 %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %4, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %155

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = call i64 @bmp_read_header(i32 %13, %struct.TYPE_14__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = call i32 @gdFree(%struct.TYPE_14__* %18)
  store i32* null, i32** %2, align 8
  br label %155

20:                                               ; preds = %12
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 19778
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = call i32 @gdFree(%struct.TYPE_14__* %26)
  store i32* null, i32** %2, align 8
  br label %155

28:                                               ; preds = %20
  %29 = call i64 @gdCalloc(i32 1, i32 28)
  %30 = inttoptr i64 %29 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %5, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = call i32 @gdFree(%struct.TYPE_14__* %33)
  store i32* null, i32** %2, align 8
  br label %155

35:                                               ; preds = %28
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = call i64 @bmp_read_info(i32 %36, %struct.TYPE_14__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = call i32 @gdFree(%struct.TYPE_14__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = call i32 @gdFree(%struct.TYPE_14__* %43)
  store i32* null, i32** %2, align 8
  br label %155

45:                                               ; preds = %35
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = call i32 @BMP_DEBUG(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 @BMP_DEBUG(i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = call i32 @BMP_DEBUG(i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = call i32 @BMP_DEBUG(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = call i32 @BMP_DEBUG(i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = call i32 @BMP_DEBUG(i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 16
  br i1 %79, label %80, label %88

80:                                               ; preds = %45
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @gdImageCreateTrueColor(i32 %83, i32 %86)
  store i32* %87, i32** %6, align 8
  br label %96

88:                                               ; preds = %45
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32* @gdImageCreate(i32 %91, i32 %94)
  store i32* %95, i32** %6, align 8
  br label %96

96:                                               ; preds = %88, %80
  %97 = load i32*, i32** %6, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = call i32 @gdFree(%struct.TYPE_14__* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = call i32 @gdFree(%struct.TYPE_14__* %102)
  store i32* null, i32** %2, align 8
  br label %155

104:                                              ; preds = %96
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %140 [
    i32 1, label %108
    i32 4, label %116
    i32 8, label %124
    i32 16, label %132
    i32 24, label %132
    i32 32, label %132
  ]

108:                                              ; preds = %104
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %110 = call i32 @BMP_DEBUG(i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = call i32 @bmp_read_1bit(i32* %111, i32 %112, %struct.TYPE_14__* %113, %struct.TYPE_14__* %114)
  store i32 %115, i32* %7, align 4
  br label %143

116:                                              ; preds = %104
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %118 = call i32 @BMP_DEBUG(i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %3, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = call i32 @bmp_read_4bit(i32* %119, i32 %120, %struct.TYPE_14__* %121, %struct.TYPE_14__* %122)
  store i32 %123, i32* %7, align 4
  br label %143

124:                                              ; preds = %104
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %126 = call i32 @BMP_DEBUG(i32 %125)
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %3, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %131 = call i32 @bmp_read_8bit(i32* %127, i32 %128, %struct.TYPE_14__* %129, %struct.TYPE_14__* %130)
  store i32 %131, i32* %7, align 4
  br label %143

132:                                              ; preds = %104, %104, %104
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %134 = call i32 @BMP_DEBUG(i32 %133)
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %3, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = call i32 @bmp_read_direct(i32* %135, i32 %136, %struct.TYPE_14__* %137, %struct.TYPE_14__* %138)
  store i32 %139, i32* %7, align 4
  br label %143

140:                                              ; preds = %104
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %142 = call i32 @BMP_DEBUG(i32 %141)
  store i32 1, i32* %7, align 4
  br label %143

143:                                              ; preds = %140, %132, %124, %116, %108
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %145 = call i32 @gdFree(%struct.TYPE_14__* %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = call i32 @gdFree(%struct.TYPE_14__* %146)
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i32*, i32** %6, align 8
  %152 = call i32 @gdImageDestroy(i32* %151)
  store i32* null, i32** %2, align 8
  br label %155

153:                                              ; preds = %143
  %154 = load i32*, i32** %6, align 8
  store i32* %154, i32** %2, align 8
  br label %155

155:                                              ; preds = %153, %150, %99, %40, %32, %25, %17, %11
  %156 = load i32*, i32** %2, align 8
  ret i32* %156
}

declare dso_local i64 @gdCalloc(i32, i32) #1

declare dso_local i64 @bmp_read_header(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @gdFree(%struct.TYPE_14__*) #1

declare dso_local i64 @bmp_read_info(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @BMP_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32* @gdImageCreate(i32, i32) #1

declare dso_local i32 @bmp_read_1bit(i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @bmp_read_4bit(i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @bmp_read_8bit(i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @bmp_read_direct(i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @gdImageDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

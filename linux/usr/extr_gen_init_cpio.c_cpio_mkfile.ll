; ModuleID = '/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_cpio_mkfile.c'
source_filename = "/home/carl/AnghaBench/linux/usr/extr_gen_init_cpio.c_cpio_mkfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@S_IFREG = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"File %s could not be opened for reading\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"File %s could not be stat()'ed\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Can not read %s file\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08lX%08X%08X%08X%08X%08X%08X\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@ino = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"writing filebuf failed\0A\00", align 1
@offset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64, i32)* @cpio_mkfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpio_mkfile(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  %22 = load i32, i32* @S_IFREG, align 4
  %23 = load i32, i32* %9, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %132

34:                                               ; preds = %6
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @fstat(i32 %35, %struct.stat* %15)
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %132

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @malloc(i64 %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %132

52:                                               ; preds = %43
  %53 = load i32, i32* %17, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @read(i32 %53, i8* %54, i64 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %132

64:                                               ; preds = %52
  store i64 0, i64* %16, align 8
  store i32 1, i32* %21, align 4
  br label %65

65:                                               ; preds = %126, %64
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ule i32 %66, %67
  br i1 %68, label %69, label %129

69:                                               ; preds = %65
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %16, align 8
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %20, align 4
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %90 = load i32, i32* @ino, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %12, align 4
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* %20, align 4
  %99 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %90, i32 %91, i64 %92, i64 %93, i32 %94, i64 %96, i64 %97, i32 3, i32 1, i32 0, i32 0, i32 %98, i32 0)
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %101 = call i32 @push_hdr(i8* %100)
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @push_string(i8* %102)
  %104 = call i32 (...) @push_pad()
  %105 = load i64, i64* %16, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %85
  %108 = load i8*, i8** %14, align 8
  %109 = load i64, i64* %16, align 8
  %110 = load i32, i32* @stdout, align 4
  %111 = call i32 @fwrite(i8* %108, i64 %109, i32 1, i32 %110)
  %112 = icmp ne i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %132

116:                                              ; preds = %107
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* @offset, align 8
  %119 = add nsw i64 %118, %117
  store i64 %119, i64* @offset, align 8
  %120 = call i32 (...) @push_pad()
  br label %121

121:                                              ; preds = %116, %85
  %122 = load i32, i32* %20, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %7, align 8
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %21, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %21, align 4
  br label %65

129:                                              ; preds = %65
  %130 = load i32, i32* @ino, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @ino, align 4
  store i32 0, i32* %19, align 4
  br label %132

132:                                              ; preds = %129, %113, %60, %49, %39, %30
  %133 = load i8*, i8** %14, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %17, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @close(i32 %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %19, align 4
  ret i32 %145
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @push_hdr(i8*) #1

declare dso_local i32 @push_string(i8*) #1

declare dso_local i32 @push_pad(...) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

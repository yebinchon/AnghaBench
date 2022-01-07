; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_rotate_index.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_rotate_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSIZE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"file name too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s.attr\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.attr.%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"unable to rename %s to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@ENOTDIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rotate_index(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @BSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = mul nuw i64 5, %14
  %17 = alloca i8, i64 %16, align 16
  store i64 %14, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %3
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 6
  %36 = load i32, i32* @BSIZE, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @bio_err, align 4
  %40 = call i32 (i32, i8*, ...) @BIO_printf(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %170

41:                                               ; preds = %33
  %42 = mul nsw i64 4, %14
  %43 = getelementptr inbounds i8, i8* %17, i64 %42
  %44 = mul nsw i64 4, %14
  %45 = getelementptr inbounds i8, i8* %17, i64 %44
  %46 = trunc i64 %14 to i32
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %43, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %11, align 4
  %49 = mul nsw i64 3, %14
  %50 = getelementptr inbounds i8, i8* %17, i64 %49
  %51 = mul nsw i64 3, %14
  %52 = getelementptr inbounds i8, i8* %17, i64 %51
  %53 = trunc i64 %14 to i32
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %50, i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = mul nsw i64 2, %14
  %58 = getelementptr inbounds i8, i8* %17, i64 %57
  %59 = mul nsw i64 2, %14
  %60 = getelementptr inbounds i8, i8* %17, i64 %59
  %61 = trunc i64 %14 to i32
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %58, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %62, i8* %63)
  store i32 %64, i32* %11, align 4
  %65 = mul nsw i64 1, %14
  %66 = getelementptr inbounds i8, i8* %17, i64 %65
  %67 = mul nsw i64 1, %14
  %68 = getelementptr inbounds i8, i8* %17, i64 %67
  %69 = trunc i64 %14 to i32
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %66, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* %71)
  store i32 %72, i32* %11, align 4
  %73 = mul nsw i64 0, %14
  %74 = getelementptr inbounds i8, i8* %17, i64 %73
  %75 = mul nsw i64 0, %14
  %76 = getelementptr inbounds i8, i8* %17, i64 %75
  %77 = trunc i64 %14 to i32
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 (i8*, i32, i8*, i8*, ...) @BIO_snprintf(i8* %74, i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %78, i8* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = mul nsw i64 1, %14
  %83 = getelementptr inbounds i8, i8* %17, i64 %82
  %84 = call i64 @rename(i8* %81, i8* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %41
  %87 = load i64, i64* @errno, align 8
  %88 = load i64, i64* @ENOENT, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @bio_err, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = mul nsw i64 1, %14
  %94 = getelementptr inbounds i8, i8* %17, i64 %93
  %95 = call i32 (i32, i8*, ...) @BIO_printf(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* %94)
  %96 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %170

97:                                               ; preds = %86, %41
  %98 = mul nsw i64 0, %14
  %99 = getelementptr inbounds i8, i8* %17, i64 %98
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @rename(i8* %99, i8* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32, i32* @bio_err, align 4
  %105 = mul nsw i64 0, %14
  %106 = getelementptr inbounds i8, i8* %17, i64 %105
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 (i32, i8*, ...) @BIO_printf(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %106, i8* %107)
  %109 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %110 = mul nsw i64 1, %14
  %111 = getelementptr inbounds i8, i8* %17, i64 %110
  %112 = load i8*, i8** %5, align 8
  %113 = call i64 @rename(i8* %111, i8* %112)
  br label %170

114:                                              ; preds = %97
  %115 = mul nsw i64 4, %14
  %116 = getelementptr inbounds i8, i8* %17, i64 %115
  %117 = mul nsw i64 3, %14
  %118 = getelementptr inbounds i8, i8* %17, i64 %117
  %119 = call i64 @rename(i8* %116, i8* %118)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %114
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @ENOENT, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i32, i32* @bio_err, align 4
  %127 = mul nsw i64 4, %14
  %128 = getelementptr inbounds i8, i8* %17, i64 %127
  %129 = mul nsw i64 3, %14
  %130 = getelementptr inbounds i8, i8* %17, i64 %129
  %131 = call i32 (i32, i8*, ...) @BIO_printf(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %128, i8* %130)
  %132 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i8*, i8** %5, align 8
  %134 = mul nsw i64 0, %14
  %135 = getelementptr inbounds i8, i8* %17, i64 %134
  %136 = call i64 @rename(i8* %133, i8* %135)
  %137 = mul nsw i64 1, %14
  %138 = getelementptr inbounds i8, i8* %17, i64 %137
  %139 = load i8*, i8** %5, align 8
  %140 = call i64 @rename(i8* %138, i8* %139)
  br label %170

141:                                              ; preds = %121, %114
  %142 = mul nsw i64 2, %14
  %143 = getelementptr inbounds i8, i8* %17, i64 %142
  %144 = mul nsw i64 4, %14
  %145 = getelementptr inbounds i8, i8* %17, i64 %144
  %146 = call i64 @rename(i8* %143, i8* %145)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %141
  %149 = load i32, i32* @bio_err, align 4
  %150 = mul nsw i64 2, %14
  %151 = getelementptr inbounds i8, i8* %17, i64 %150
  %152 = mul nsw i64 4, %14
  %153 = getelementptr inbounds i8, i8* %17, i64 %152
  %154 = call i32 (i32, i8*, ...) @BIO_printf(i32 %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %151, i8* %153)
  %155 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %156 = mul nsw i64 3, %14
  %157 = getelementptr inbounds i8, i8* %17, i64 %156
  %158 = mul nsw i64 4, %14
  %159 = getelementptr inbounds i8, i8* %17, i64 %158
  %160 = call i64 @rename(i8* %157, i8* %159)
  %161 = load i8*, i8** %5, align 8
  %162 = mul nsw i64 0, %14
  %163 = getelementptr inbounds i8, i8* %17, i64 %162
  %164 = call i64 @rename(i8* %161, i8* %163)
  %165 = mul nsw i64 1, %14
  %166 = getelementptr inbounds i8, i8* %17, i64 %165
  %167 = load i8*, i8** %5, align 8
  %168 = call i64 @rename(i8* %166, i8* %167)
  br label %170

169:                                              ; preds = %141
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %171

170:                                              ; preds = %148, %125, %103, %90, %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %171

171:                                              ; preds = %170, %169
  %172 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @BIO_printf(i32, i8*, ...) #2

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

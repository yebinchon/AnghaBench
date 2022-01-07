; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/downloader/extr_raspiloader.c_send_kernel.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/downloader/extr_raspiloader.c_send_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"kernel too big\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"### sending kernel %s [%zu byte]\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"write()\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"size check error\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"### finished sending\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_kernel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @perror(i8* %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @do_exit(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SEEK_END, align 4
  %33 = call i32 @lseek(i32 %31, i64 0, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 2097152
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @EXIT_FAILURE, align 4
  %41 = call i32 @do_exit(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @htole32(i32 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i32 @lseek(i32 %45, i64 0, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %48, i64 %50)
  %52 = bitcast i64* %7 to i32*
  %53 = bitcast i32* %52 to i8*
  store i8* %53, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %75, %42
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 4, %63
  %65 = call i32 @write(i32 %58, i8* %62, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @tcdrain(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %75

70:                                               ; preds = %57
  %71 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @EXIT_FAILURE, align 4
  %74 = call i32 @do_exit(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %57
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %54

79:                                               ; preds = %54
  %80 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %80, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %84, %79
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 4, %87
  %89 = call i32 (i32, ...) @read(i32 %85, i32* %86, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %81

93:                                               ; preds = %81
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = shl i32 %95, 24
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 16
  %100 = or i32 %96, %99
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 8
  %104 = or i32 %100, %103
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %104, %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %14, align 8
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %7, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %93
  %113 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @EXIT_FAILURE, align 4
  %116 = call i32 @do_exit(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %93
  br label %118

118:                                              ; preds = %164, %117
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  br i1 %121, label %122, label %166

122:                                              ; preds = %118
  %123 = load i32, i32* @BUF_SIZE, align 4
  %124 = zext i32 %123 to i64
  %125 = call i8* @llvm.stacksave()
  store i8* %125, i8** %15, align 8
  %126 = alloca i8, i64 %124, align 16
  store i64 %124, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @BUF_SIZE, align 4
  %129 = call i32 (i32, ...) @read(i32 %127, i8* %126, i32 %128)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  switch i32 %130, label %137 [
    i32 -1, label %131
    i32 0, label %136
  ]

131:                                              ; preds = %122
  %132 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @EXIT_FAILURE, align 4
  %135 = call i32 @do_exit(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %122, %131
  store i32 1, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %157, %137
  %139 = load i32, i32* %18, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %138
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %126, i64 %144
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @write(i32 %142, i8* %145, i32 %146)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @tcdrain(i32 %148)
  %150 = load i32, i32* %19, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %157

152:                                              ; preds = %141
  %153 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @EXIT_FAILURE, align 4
  %156 = call i32 @do_exit(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %141
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %18, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %17, align 4
  br label %138

164:                                              ; preds = %138
  %165 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %165)
  br label %118

166:                                              ; preds = %118
  %167 = load i32, i32* @stderr, align 4
  %168 = call i32 @fprintf(i32 %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @do_exit(i32, i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @htole32(i32) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @tcdrain(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @read(i32, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

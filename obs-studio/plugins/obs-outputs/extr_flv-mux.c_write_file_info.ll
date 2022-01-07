; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_write_file_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_write_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLV_INFO_SIZE_OFFSET = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fileSize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_file_info(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 64
  store i8* %12, i8** %9, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @FLV_INFO_SIZE_OFFSET, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @fseek(i32* %13, i32 %14, i32 %15)
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sitofp i64 %18 to double
  %20 = fdiv double %19, 1.000000e+03
  %21 = call i32 @enc_num_val(i8** %8, i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sitofp i64 %23 to double
  %25 = call i32 @enc_num_val(i8** %8, i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), double %24)
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fwrite(i8* %26, i32 1, i32 %32, i32* %33)
  ret void
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @enc_num_val(i8**, i8*, i8*, double) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

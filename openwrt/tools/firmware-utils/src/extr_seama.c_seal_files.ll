; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_seama.c_seal_files.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_seama.c_seal_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@o_isize = common dso_local global i64 0, align 8
@o_images = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [28 x i8] c"'%s' is not a seama file !\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@o_meta = common dso_local global i32 0, align 4
@o_msize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @seal_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seal_files(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @o_isize, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load i8**, i8*** @o_images, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @verify_seama(i8* %14, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load i8**, i8*** @o_images, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %66

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load i8*, i8** %2, align 8
  %29 = call i32* @fopen(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @o_meta, align 4
  %35 = load i32, i32* @o_msize, align 4
  %36 = call i32 @write_seama_header(i32* %33, i32 %34, i32 %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @o_meta, align 4
  %39 = load i32, i32* @o_msize, align 4
  %40 = call i32 @write_meta_data(i32* %37, i32 %38, i32 %39)
  store i64 0, i64* %5, align 8
  br label %41

41:                                               ; preds = %60, %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @o_isize, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load i8**, i8*** @o_images, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32* @fopen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %50, i32** %4, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32*, i32** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @copy_file(i32* %54, i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fclose(i32* %57)
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %41

63:                                               ; preds = %41
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @fclose(i32* %64)
  br label %66

66:                                               ; preds = %17, %63, %27
  ret void
}

declare dso_local i64 @verify_seama(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @write_seama_header(i32*, i32, i32, i32) #1

declare dso_local i32 @write_meta_data(i32*, i32, i32) #1

declare dso_local i32 @copy_file(i32*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

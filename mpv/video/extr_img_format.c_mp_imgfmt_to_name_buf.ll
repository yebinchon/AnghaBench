; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_to_name_buf.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_to_name_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_imgfmt_entry = type { i32, i8* }
%struct.TYPE_3__ = type { i8* }

@mp_imgfmt_list = common dso_local global %struct.mp_imgfmt_entry* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_imgfmt_to_name_buf(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mp_imgfmt_entry*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %11 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** @mp_imgfmt_list, align 8
  store %struct.mp_imgfmt_entry* %11, %struct.mp_imgfmt_entry** %8, align 8
  br label %12

12:                                               ; preds = %33, %3
  %13 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %8, align 8
  %14 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %12
  %18 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %8, align 8
  %19 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %8, align 8
  %24 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %8, align 8
  %30 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  br label %36

32:                                               ; preds = %22, %17
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %8, align 8
  %35 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %34, i32 1
  store %struct.mp_imgfmt_entry* %35, %struct.mp_imgfmt_entry** %8, align 8
  br label %12

36:                                               ; preds = %28, %12
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @imgfmt2pixfmt(i32 %40)
  %42 = call %struct.TYPE_3__* @av_pix_fmt_desc_get(i32 %41)
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %9, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = icmp ne %struct.TYPE_3__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @snprintf(i8* %55, i64 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @strlen(i8* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %89

63:                                               ; preds = %54
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call signext i8 @MP_SELECT_LE_BE(i8 signext 108, i8 signext 98)
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %63
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 101
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 0, i8* %88, align 1
  br label %89

89:                                               ; preds = %83, %74, %63, %54
  %90 = load i8*, i8** %4, align 8
  ret i8* %90
}

declare dso_local %struct.TYPE_3__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @imgfmt2pixfmt(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @MP_SELECT_LE_BE(i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

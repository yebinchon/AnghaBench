; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_from_name.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_from_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_imgfmt_entry = type { i32, i64 }

@mp_imgfmt_list = common dso_local global %struct.mp_imgfmt_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_imgfmt_from_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_imgfmt_entry*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** @mp_imgfmt_list, align 8
  store %struct.mp_imgfmt_entry* %6, %struct.mp_imgfmt_entry** %4, align 8
  br label %7

7:                                                ; preds = %24, %1
  %8 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %4, align 8
  %9 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %4, align 8
  %15 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @bstr_equals0(i32 %13, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %4, align 8
  %21 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.mp_imgfmt_entry*, %struct.mp_imgfmt_entry** %4, align 8
  %26 = getelementptr inbounds %struct.mp_imgfmt_entry, %struct.mp_imgfmt_entry* %25, i32 1
  store %struct.mp_imgfmt_entry* %26, %struct.mp_imgfmt_entry** %4, align 8
  br label %7

27:                                               ; preds = %19, %7
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = call i8* @bstrdup0(i32* null, i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @av_get_pix_fmt(i8* %33)
  %35 = call i32 @pixfmt2imgfmt(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @talloc_free(i8* %36)
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @bstr_equals0(i32, i64) #1

declare dso_local i8* @bstrdup0(i32*, i32) #1

declare dso_local i32 @pixfmt2imgfmt(i32) #1

declare dso_local i32 @av_get_pix_fmt(i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

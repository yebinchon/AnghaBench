; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_valid_extension.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/vlc-video/extr_vlc-video-source.c_valid_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }

@EXTENSIONS_MEDIA = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @valid_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_extension(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dstr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = bitcast %struct.dstr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %53

16:                                               ; preds = %11
  %17 = load i8*, i8** @EXTENSIONS_MEDIA, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 59)
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %45, %16
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @dstr_ncopy(%struct.dstr* %4, i8* %25, i32 %31)
  br label %36

33:                                               ; preds = %21
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @dstr_copy(%struct.dstr* %4, i8* %34)
  br label %36

36:                                               ; preds = %33, %24
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @dstr_cmp(%struct.dstr* %4, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %50

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 59)
  store i8* %49, i8** %7, align 8
  br label %21

50:                                               ; preds = %44, %40
  %51 = call i32 @dstr_free(%struct.dstr* %4)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %15
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @dstr_ncopy(%struct.dstr*, i8*, i32) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i64 @dstr_cmp(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

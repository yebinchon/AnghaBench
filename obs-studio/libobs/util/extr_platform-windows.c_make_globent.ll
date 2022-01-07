; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_make_globent.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-windows.c_make_globent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.os_globent = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dstr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.os_globent*, %struct.TYPE_4__*, i8*)* @make_globent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_globent(%struct.os_globent* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca %struct.os_globent*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca %struct.dstr, align 4
  %9 = alloca i8*, align 8
  store %struct.os_globent* %0, %struct.os_globent** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dstr_from_wcs(%struct.dstr* %7, i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @dstr_copy(%struct.dstr* %8, i8* %16)
  %18 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @strrchr(i32 %19, i8 signext 47)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = call i32 @dstr_resize(%struct.dstr* %8, i8* %30)
  br label %34

32:                                               ; preds = %3
  %33 = call i32 @dstr_free(%struct.dstr* %8)
  br label %34

34:                                               ; preds = %32, %23
  %35 = call i32 @dstr_cat_dstr(%struct.dstr* %8, %struct.dstr* %7)
  %36 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.os_globent*, %struct.os_globent** %4, align 8
  %39 = getelementptr inbounds %struct.os_globent, %struct.os_globent* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = call i32 @is_dir(%struct.TYPE_4__* %40)
  %42 = load %struct.os_globent*, %struct.os_globent** %4, align 8
  %43 = getelementptr inbounds %struct.os_globent, %struct.os_globent* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = call i32 @dstr_free(%struct.dstr* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_from_wcs(%struct.dstr*, i32) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i8* @strrchr(i32, i8 signext) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i32 @is_dir(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_parse_binary_from_directory.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_parse_binary_from_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%module%\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dstr*, i8*, i8*)* @parse_binary_from_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_binary_from_directory(%struct.dstr* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dstr, align 4
  %8 = alloca i32, align 4
  store %struct.dstr* %0, %struct.dstr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i32 1, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @dstr_copy(%struct.dstr* %7, i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @dstr_replace(%struct.dstr* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call signext i8 @dstr_end(%struct.dstr* %7)
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 47
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @dstr_cat_ch(%struct.dstr* %7, i8 signext 47)
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.dstr*, %struct.dstr** %4, align 8
  %21 = call i32 @dstr_copy_dstr(%struct.dstr* %20, %struct.dstr* %7)
  %22 = load %struct.dstr*, %struct.dstr** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @dstr_cat(%struct.dstr* %22, i8* %23)
  %25 = load %struct.dstr*, %struct.dstr** %4, align 8
  %26 = call i8* (...) @get_module_extension()
  %27 = call i32 @dstr_cat(%struct.dstr* %25, i8* %26)
  %28 = load %struct.dstr*, %struct.dstr** %4, align 8
  %29 = getelementptr inbounds %struct.dstr, %struct.dstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @os_file_exists(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %19
  %34 = load %struct.dstr*, %struct.dstr** %4, align 8
  %35 = call i32 @dstr_copy_dstr(%struct.dstr* %34, %struct.dstr* %7)
  %36 = load %struct.dstr*, %struct.dstr** %4, align 8
  %37 = call i32 @dstr_cat(%struct.dstr* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.dstr*, %struct.dstr** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @dstr_cat(%struct.dstr* %38, i8* %39)
  %41 = load %struct.dstr*, %struct.dstr** %4, align 8
  %42 = call i8* (...) @get_module_extension()
  %43 = call i32 @dstr_cat(%struct.dstr* %41, i8* %42)
  %44 = load %struct.dstr*, %struct.dstr** %4, align 8
  %45 = getelementptr inbounds %struct.dstr, %struct.dstr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @os_file_exists(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %33
  %50 = load %struct.dstr*, %struct.dstr** %4, align 8
  %51 = call i32 @dstr_free(%struct.dstr* %50)
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %33
  br label %53

53:                                               ; preds = %52, %19
  %54 = call i32 @dstr_free(%struct.dstr* %7)
  %55 = load i32, i32* %8, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #2

declare dso_local signext i8 @dstr_end(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @dstr_copy_dstr(%struct.dstr*, %struct.dstr*) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

declare dso_local i8* @get_module_extension(...) #2

declare dso_local i32 @os_file_exists(i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

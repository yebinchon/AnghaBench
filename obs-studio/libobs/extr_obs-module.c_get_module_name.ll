; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_get_module_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-module.c_get_module_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i64, i32 }

@get_module_name.ext_len = internal global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_module_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_module_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dstr, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.dstr* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = load i64, i64* @get_module_name.ext_len, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i8* (...) @get_module_extension()
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* @get_module_name.ext_len, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @dstr_copy(%struct.dstr* %3, i8* %13)
  %15 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @get_module_name.ext_len, align 8
  %18 = sub i64 %16, %17
  %19 = call i32 @dstr_resize(%struct.dstr* %3, i64 %18)
  %20 = getelementptr inbounds %struct.dstr, %struct.dstr* %3, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  ret i8* %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @get_module_extension(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local i32 @dstr_resize(%struct.dstr*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

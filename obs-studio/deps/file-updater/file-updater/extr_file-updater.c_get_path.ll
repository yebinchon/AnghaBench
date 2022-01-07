; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_get_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/file-updater/file-updater/extr_file-updater.c_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @get_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dstr, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = bitcast %struct.dstr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 16, i1 false)
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @dstr_copy(%struct.dstr* %5, i8* %7)
  %9 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = call signext i8 @dstr_end(%struct.dstr* %5)
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 47
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = call signext i8 @dstr_end(%struct.dstr* %5)
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 92
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @dstr_cat_ch(%struct.dstr* %5, i8 signext 47)
  br label %22

22:                                               ; preds = %20, %16, %12, %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @dstr_cat(%struct.dstr* %5, i8* %23)
  %25 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  ret i8* %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i8*) #2

declare dso_local signext i8 @dstr_end(%struct.dstr*) #2

declare dso_local i32 @dstr_cat_ch(%struct.dstr*, i8 signext) #2

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

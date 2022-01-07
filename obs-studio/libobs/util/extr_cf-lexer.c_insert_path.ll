; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_insert_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_insert_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.dstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.dstr*)* @insert_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_path(%struct.cf_preprocessor* %0, %struct.dstr* %1) #0 {
  %3 = alloca %struct.cf_preprocessor*, align 8
  %4 = alloca %struct.dstr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dstr, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %3, align 8
  store %struct.dstr* %1, %struct.dstr** %4, align 8
  %8 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %9 = icmp ne %struct.cf_preprocessor* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %12 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %17 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %15
  %23 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %24 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 47)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %22
  %33 = bitcast %struct.dstr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 4, i1 false)
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = add nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i32 @dstr_ncopy(%struct.dstr* %7, i8* %34, i32 %41)
  %43 = load %struct.dstr*, %struct.dstr** %4, align 8
  %44 = call i32 @dstr_insert_dstr(%struct.dstr* %43, i32 0, %struct.dstr* %7)
  %45 = call i32 @dstr_free(%struct.dstr* %7)
  br label %46

46:                                               ; preds = %32, %22
  br label %47

47:                                               ; preds = %46, %15, %10, %2
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dstr_ncopy(%struct.dstr*, i8*, i32) #1

declare dso_local i32 @dstr_insert_dstr(%struct.dstr*, i32, %struct.dstr*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

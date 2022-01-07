; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_init_info.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_cplus_demangle_init_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_info = type { i8*, i8*, i32, i8*, i32, i64, i64, i64, i64, i32*, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cplus_demangle_init_info(i8* %0, i32 %1, i64 %2, %struct.d_info* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.d_info*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.d_info* %3, %struct.d_info** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.d_info*, %struct.d_info** %8, align 8
  %11 = getelementptr inbounds %struct.d_info, %struct.d_info* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load %struct.d_info*, %struct.d_info** %8, align 8
  %16 = getelementptr inbounds %struct.d_info, %struct.d_info* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.d_info*, %struct.d_info** %8, align 8
  %19 = getelementptr inbounds %struct.d_info, %struct.d_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.d_info*, %struct.d_info** %8, align 8
  %22 = getelementptr inbounds %struct.d_info, %struct.d_info* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 2, %23
  %25 = trunc i64 %24 to i32
  %26 = load %struct.d_info*, %struct.d_info** %8, align 8
  %27 = getelementptr inbounds %struct.d_info, %struct.d_info* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.d_info*, %struct.d_info** %8, align 8
  %29 = getelementptr inbounds %struct.d_info, %struct.d_info* %28, i32 0, i32 11
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.d_info*, %struct.d_info** %8, align 8
  %32 = getelementptr inbounds %struct.d_info, %struct.d_info* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  %33 = load %struct.d_info*, %struct.d_info** %8, align 8
  %34 = getelementptr inbounds %struct.d_info, %struct.d_info* %33, i32 0, i32 10
  store i64 0, i64* %34, align 8
  %35 = load %struct.d_info*, %struct.d_info** %8, align 8
  %36 = getelementptr inbounds %struct.d_info, %struct.d_info* %35, i32 0, i32 9
  store i32* null, i32** %36, align 8
  %37 = load %struct.d_info*, %struct.d_info** %8, align 8
  %38 = getelementptr inbounds %struct.d_info, %struct.d_info* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.d_info*, %struct.d_info** %8, align 8
  %40 = getelementptr inbounds %struct.d_info, %struct.d_info* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.d_info*, %struct.d_info** %8, align 8
  %42 = getelementptr inbounds %struct.d_info, %struct.d_info* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

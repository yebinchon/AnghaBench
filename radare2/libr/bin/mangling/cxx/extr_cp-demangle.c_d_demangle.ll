; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_demangle.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/cxx/extr_cp-demangle.c_d_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_growable_string = type { i8*, i32, i64 }

@d_growable_string_callback_adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64*)* @d_demangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @d_demangle(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.d_growable_string, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = call i32 @d_growable_string_init(%struct.d_growable_string* %8, i32 0)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @d_growable_string_callback_adapter, align 4
  %14 = call i32 @d_demangle_callback(i8* %11, i32 %12, i32 %13, %struct.d_growable_string* %8)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %8, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  store i8* null, i8** %4, align 8
  br label %36

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %8, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ 1, %26 ], [ %29, %27 ]
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %8, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %4, align 8
  br label %36

36:                                               ; preds = %30, %17
  %37 = load i8*, i8** %4, align 8
  ret i8* %37
}

declare dso_local i32 @d_growable_string_init(%struct.d_growable_string*, i32) #1

declare dso_local i32 @d_demangle_callback(i8*, i32, i32, %struct.d_growable_string*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

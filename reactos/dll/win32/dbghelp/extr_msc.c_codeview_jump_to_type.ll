; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_jump_to_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_jump_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i64, i8*, i32* }

@FIRST_DEFINABLE_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.codeview_type_parse*, i64)* @codeview_jump_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @codeview_jump_to_type(%struct.codeview_type_parse* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.codeview_type_parse*, align 8
  %5 = alloca i64, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @FIRST_DEFINABLE_TYPE, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %34

10:                                               ; preds = %2
  %11 = load i64, i64* @FIRST_DEFINABLE_TYPE, align 8
  %12 = load i64, i64* %5, align 8
  %13 = sub i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %4, align 8
  %16 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %32

20:                                               ; preds = %10
  %21 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %4, align 8
  %22 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %4, align 8
  %25 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %23, i64 %30
  br label %32

32:                                               ; preds = %20, %19
  %33 = phi i8* [ null, %19 ], [ %31, %20 ]
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %32, %9
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_get_entries_from_section.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/wasm/extr_wasm.c_get_entries_from_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@R_BUF_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"[wasm] error: beach reading entries for section %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, %struct.TYPE_5__*, i8* (i32*, i64)*, i32 (i8*)*)* @get_entries_from_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_entries_from_section(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* (i32*, i64)* %2, i32 (i8*)* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8* (i32*, i64)*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* (i32*, i64)* %2, i8* (i32*, i64)** %8, align 8
  store i32 (i8*)* %3, i32 (i8*)** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ false, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @r_return_val_if_fail(i32 %22, i32* null)
  %24 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %25 = call i32* @r_list_newf(i32 (i8*)* %24)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32* null, i32** %5, align 8
  br label %93

29:                                               ; preds = %20
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @R_BUF_SET, align 4
  %38 = call i32 @r_buf_seek(i32* %33, i32 %36, i32 %37)
  store i64 0, i64* %12, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @r_buf_tell(i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = sub nsw i64 %44, 1
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @r_buf_size(i32* %47)
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %29
  br label %87

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %82, %51
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @r_buf_tell(i32* %53)
  %55 = load i64, i64* %13, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %58, %61
  br label %63

63:                                               ; preds = %57, %52
  %64 = phi i1 [ false, %52 ], [ %62, %57 ]
  br i1 %64, label %65, label %85

65:                                               ; preds = %63
  %66 = load i8* (i32*, i64)*, i8* (i32*, i64)** %8, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i8* %66(i32* %67, i64 %68)
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %87

73:                                               ; preds = %65
  %74 = load i32*, i32** %10, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = call i32 @r_list_append(i32* %74, i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 %79(i8* %80)
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %52

85:                                               ; preds = %63
  %86 = load i32*, i32** %10, align 8
  store i32* %86, i32** %5, align 8
  br label %93

87:                                               ; preds = %72, %50
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @eprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32*, i32** %10, align 8
  store i32* %92, i32** %5, align 8
  br label %93

93:                                               ; preds = %87, %85, %28
  %94 = load i32*, i32** %5, align 8
  ret i32* %94
}

declare dso_local i32 @r_return_val_if_fail(i32, i32*) #1

declare dso_local i32* @r_list_newf(i32 (i8*)*) #1

declare dso_local i32 @r_buf_seek(i32*, i32, i32) #1

declare dso_local i64 @r_buf_tell(i32*) #1

declare dso_local i64 @r_buf_size(i32*) #1

declare dso_local i32 @r_list_append(i32*, i8*) #1

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_store_input_from_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_store_input_from_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i32, i32 }
%struct.descriptor_item = type { i32, i32, i32, i64 }
%struct.variable = type { i32, i32, i32, i32, i32*, i32**, i32, i64, i32*, i32, i32, i32 }

@ECPGt_char = common dso_local global i32 0, align 4
@ECPGt_NO_INDICATOR = common dso_local global i32 0, align 4
@ECPGt_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statement*, %struct.descriptor_item*, i8**)* @store_input_from_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_input_from_desc(%struct.statement* %0, %struct.descriptor_item* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.statement*, align 8
  %6 = alloca %struct.descriptor_item*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.variable, align 8
  store %struct.statement* %0, %struct.statement** %5, align 8
  store %struct.descriptor_item* %1, %struct.descriptor_item** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %10 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %15 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.statement*, %struct.statement** %5, align 8
  %18 = getelementptr inbounds %struct.statement, %struct.statement* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ecpg_alloc(i32 %16, i32 %19)
  %21 = load i8**, i8*** %7, align 8
  store i8* %20, i8** %21, align 8
  %22 = icmp ne i8* %20, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %86

24:                                               ; preds = %13
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %28 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %31 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memcpy(i8* %26, i32 %29, i32 %32)
  store i32 1, i32* %4, align 4
  br label %86

34:                                               ; preds = %3
  %35 = load i32, i32* @ECPGt_char, align 4
  %36 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 11
  store i32 %35, i32* %36, align 8
  %37 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %38 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strlen(i32 %39)
  %41 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 10
  store i32 %40, i32* %41, align 4
  %42 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %43 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 9
  store i32 %44, i32* %45, align 8
  %46 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %47 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 8
  store i32* %47, i32** %48, align 8
  %49 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 7
  store i64 0, i64* %50, align 8
  %51 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %52 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %34
  %56 = load i32, i32* @ECPGt_NO_INDICATOR, align 4
  %57 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 6
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 5
  store i32** null, i32*** %58, align 8
  %59 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 4
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 1
  store i32 0, i32* %62, align 4
  br label %74

63:                                               ; preds = %34
  %64 = load i32, i32* @ECPGt_int, align 4
  %65 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 6
  store i32 %64, i32* %65, align 8
  %66 = load %struct.descriptor_item*, %struct.descriptor_item** %6, align 8
  %67 = getelementptr inbounds %struct.descriptor_item, %struct.descriptor_item* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 4
  store i32* %67, i32** %68, align 8
  %69 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 4
  %70 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 5
  store i32** %69, i32*** %70, align 8
  %71 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.variable, %struct.variable* %8, i32 0, i32 3
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %55
  %75 = load %struct.statement*, %struct.statement** %5, align 8
  %76 = getelementptr inbounds %struct.statement, %struct.statement* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.statement*, %struct.statement** %5, align 8
  %79 = getelementptr inbounds %struct.statement, %struct.statement* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8**, i8*** %7, align 8
  %82 = call i32 @ecpg_store_input(i32 %77, i32 %80, %struct.variable* %8, i8** %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %86

85:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %84, %24, %23
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i8* @ecpg_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ecpg_store_input(i32, i32, %struct.variable*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/extr_code.c___typeLoad.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/extr_code.c___typeLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"struct.\00", align 1
@VT_STRUCT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"struct.%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"struct.%s.%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"struct.%s.%s.meta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @__typeLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__typeLoad(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %109

23:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %108, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %29
  %34 = load i32, i32* @VT_STRUCT, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i8* %37, i8** %12, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @sdb_get(i32 %40, i8* %41, i32 0)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %103

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %97, %46
  %48 = load i8*, i8** %15, align 8
  %49 = call i8* @sdb_anext(i8* %48, i8** %14)
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %100

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  store i8* %56, i8** %12, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = call i8* @sdb_get(i32 %59, i8* %60, i32 0)
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  br label %100

65:                                               ; preds = %53
  %66 = load i8*, i8** %17, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 44)
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %18, align 8
  store i8 0, i8* %71, align 1
  %73 = load i8*, i8** %18, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 44)
  store i8* %74, i8** %18, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i8*, i8** %18, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %18, align 8
  store i8 0, i8* %78, align 1
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i8*, i8** %18, align 8
  store i8* %81, i8** %19, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = call i8* (i8*, i8*, ...) @sdb_fmt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* %83)
  store i8* %84, i8** %12, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @sdb_num_get(i32 %87, i8* %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @tcc_sym_push(i8* %90, i32 0, i32 %91)
  br label %93

93:                                               ; preds = %80, %65
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i8*, i8** %14, align 8
  store i8* %96, i8** %15, align 8
  br label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %47, label %100

100:                                              ; preds = %97, %64, %52
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @free(i8* %101)
  br label %103

103:                                              ; preds = %100, %33
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @tcc_sym_push(i8* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %29, %23
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %22
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @sdb_fmt(i8*, i8*, ...) #1

declare dso_local i8* @sdb_get(i32, i8*, i32) #1

declare dso_local i8* @sdb_anext(i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sdb_num_get(i32, i8*, i32) #1

declare dso_local i32 @tcc_sym_push(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

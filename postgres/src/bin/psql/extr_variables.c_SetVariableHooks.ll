; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_SetVariableHooks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_SetVariableHooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._variable = type { i8* (i32*)*, i32*, %struct._variable*, i32 (i32*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetVariableHooks(%struct._variable* %0, i8* %1, i8* (i32*)* %2, i32 (i32*)* %3) #0 {
  %5 = alloca %struct._variable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8* (i32*)*, align 8
  %8 = alloca i32 (i32*)*, align 8
  %9 = alloca %struct._variable*, align 8
  %10 = alloca %struct._variable*, align 8
  %11 = alloca i32, align 4
  store %struct._variable* %0, %struct._variable** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* (i32*)* %2, i8* (i32*)** %7, align 8
  store i32 (i32*)* %3, i32 (i32*)** %8, align 8
  %12 = load %struct._variable*, %struct._variable** %5, align 8
  %13 = icmp ne %struct._variable* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  br label %119

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @valid_variable_name(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %119

23:                                               ; preds = %18
  %24 = load %struct._variable*, %struct._variable** %5, align 8
  store %struct._variable* %24, %struct._variable** %10, align 8
  %25 = load %struct._variable*, %struct._variable** %5, align 8
  %26 = getelementptr inbounds %struct._variable, %struct._variable* %25, i32 0, i32 2
  %27 = load %struct._variable*, %struct._variable** %26, align 8
  store %struct._variable* %27, %struct._variable** %9, align 8
  br label %28

28:                                               ; preds = %72, %23
  %29 = load %struct._variable*, %struct._variable** %9, align 8
  %30 = icmp ne %struct._variable* %29, null
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load %struct._variable*, %struct._variable** %9, align 8
  %33 = getelementptr inbounds %struct._variable, %struct._variable* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strcmp(i32 %34, i8* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %31
  %40 = load i8* (i32*)*, i8* (i32*)** %7, align 8
  %41 = load %struct._variable*, %struct._variable** %9, align 8
  %42 = getelementptr inbounds %struct._variable, %struct._variable* %41, i32 0, i32 0
  store i8* (i32*)* %40, i8* (i32*)** %42, align 8
  %43 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %44 = load %struct._variable*, %struct._variable** %9, align 8
  %45 = getelementptr inbounds %struct._variable, %struct._variable* %44, i32 0, i32 3
  store i32 (i32*)* %43, i32 (i32*)** %45, align 8
  %46 = load i8* (i32*)*, i8* (i32*)** %7, align 8
  %47 = icmp ne i8* (i32*)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i8* (i32*)*, i8* (i32*)** %7, align 8
  %50 = load %struct._variable*, %struct._variable** %9, align 8
  %51 = getelementptr inbounds %struct._variable, %struct._variable* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i8* %49(i32* %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct._variable*, %struct._variable** %9, align 8
  %56 = getelementptr inbounds %struct._variable, %struct._variable* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %48, %39
  %58 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %59 = icmp ne i32 (i32*)* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %62 = load %struct._variable*, %struct._variable** %9, align 8
  %63 = getelementptr inbounds %struct._variable, %struct._variable* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 %61(i32* %64)
  br label %66

66:                                               ; preds = %60, %57
  br label %119

67:                                               ; preds = %31
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %77

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load %struct._variable*, %struct._variable** %9, align 8
  store %struct._variable* %73, %struct._variable** %10, align 8
  %74 = load %struct._variable*, %struct._variable** %9, align 8
  %75 = getelementptr inbounds %struct._variable, %struct._variable* %74, i32 0, i32 2
  %76 = load %struct._variable*, %struct._variable** %75, align 8
  store %struct._variable* %76, %struct._variable** %9, align 8
  br label %28

77:                                               ; preds = %70, %28
  %78 = call %struct._variable* @pg_malloc(i32 40)
  store %struct._variable* %78, %struct._variable** %9, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @pg_strdup(i8* %79)
  %81 = load %struct._variable*, %struct._variable** %9, align 8
  %82 = getelementptr inbounds %struct._variable, %struct._variable* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct._variable*, %struct._variable** %9, align 8
  %84 = getelementptr inbounds %struct._variable, %struct._variable* %83, i32 0, i32 1
  store i32* null, i32** %84, align 8
  %85 = load i8* (i32*)*, i8* (i32*)** %7, align 8
  %86 = load %struct._variable*, %struct._variable** %9, align 8
  %87 = getelementptr inbounds %struct._variable, %struct._variable* %86, i32 0, i32 0
  store i8* (i32*)* %85, i8* (i32*)** %87, align 8
  %88 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %89 = load %struct._variable*, %struct._variable** %9, align 8
  %90 = getelementptr inbounds %struct._variable, %struct._variable* %89, i32 0, i32 3
  store i32 (i32*)* %88, i32 (i32*)** %90, align 8
  %91 = load %struct._variable*, %struct._variable** %10, align 8
  %92 = getelementptr inbounds %struct._variable, %struct._variable* %91, i32 0, i32 2
  %93 = load %struct._variable*, %struct._variable** %92, align 8
  %94 = load %struct._variable*, %struct._variable** %9, align 8
  %95 = getelementptr inbounds %struct._variable, %struct._variable* %94, i32 0, i32 2
  store %struct._variable* %93, %struct._variable** %95, align 8
  %96 = load %struct._variable*, %struct._variable** %9, align 8
  %97 = load %struct._variable*, %struct._variable** %10, align 8
  %98 = getelementptr inbounds %struct._variable, %struct._variable* %97, i32 0, i32 2
  store %struct._variable* %96, %struct._variable** %98, align 8
  %99 = load i8* (i32*)*, i8* (i32*)** %7, align 8
  %100 = icmp ne i8* (i32*)* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %77
  %102 = load i8* (i32*)*, i8* (i32*)** %7, align 8
  %103 = load %struct._variable*, %struct._variable** %9, align 8
  %104 = getelementptr inbounds %struct._variable, %struct._variable* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i8* %102(i32* %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct._variable*, %struct._variable** %9, align 8
  %109 = getelementptr inbounds %struct._variable, %struct._variable* %108, i32 0, i32 1
  store i32* %107, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %77
  %111 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %112 = icmp ne i32 (i32*)* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32 (i32*)*, i32 (i32*)** %8, align 8
  %115 = load %struct._variable*, %struct._variable** %9, align 8
  %116 = getelementptr inbounds %struct._variable, %struct._variable* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 %114(i32* %117)
  br label %119

119:                                              ; preds = %17, %22, %66, %113, %110
  ret void
}

declare dso_local i32 @valid_variable_name(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local %struct._variable* @pg_malloc(i32) #1

declare dso_local i32 @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

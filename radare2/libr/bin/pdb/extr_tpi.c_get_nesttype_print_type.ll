; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_nesttype_print_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_nesttype_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8**)*, i32 (%struct.TYPE_5__*, i8**)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

@.str = private unnamed_addr constant [10 x i8] c"nesttype \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @get_nesttype_print_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_nesttype_print_type(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_5__*, i8**)*, i32 (%struct.TYPE_5__*, i8**)** %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = bitcast %struct.TYPE_6__** %6 to i8**
  %18 = call i32 %15(%struct.TYPE_5__* %16, i8** %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @print_base_type(i32 %22, i8** %7)
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_5__*, i8**)*, i32 (%struct.TYPE_5__*, i8**)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_5__*, i8**)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_5__*, i8**)*, i32 (%struct.TYPE_5__*, i8**)** %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = call i32 %34(%struct.TYPE_5__* %35, i8** %7)
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %38, %21
  %40 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i64 @malloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8**, i8*** %4, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8**, i8*** %4, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %81

64:                                               ; preds = %48
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcpy(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %68 = load i8*, i8** %7, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i8**, i8*** %4, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strcat(i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @free(i8* %79)
  br label %81

81:                                               ; preds = %63, %78, %75
  ret void
}

declare dso_local i32 @print_base_type(i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

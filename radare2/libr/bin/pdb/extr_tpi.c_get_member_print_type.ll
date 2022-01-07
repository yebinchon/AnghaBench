; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_member_print_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_tpi.c_get_member_print_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8**)*, i32 (%struct.TYPE_5__*, i8**)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }

@.str = private unnamed_addr constant [10 x i8] c"(member) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @get_member_print_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_member_print_type(i8* %0, i8** %1) #0 {
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
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %5, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_5__*, i8**)*, i32 (%struct.TYPE_5__*, i8**)** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = call i32 %29(%struct.TYPE_5__* %30, i8** %7)
  br label %32

32:                                               ; preds = %24, %21
  %33 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %8, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8**, i8*** %4, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i8**, i8*** %4, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @R_FREE(i8* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %74

57:                                               ; preds = %41
  %58 = load i8**, i8*** %4, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strcpy(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i8**, i8*** %4, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @strcat(i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @R_FREE(i8* %72)
  br label %74

74:                                               ; preds = %56, %71, %68
  ret void
}

declare dso_local i32 @print_base_type(i32, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

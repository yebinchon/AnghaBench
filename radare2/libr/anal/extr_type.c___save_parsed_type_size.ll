; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_type.c___save_parsed_type_size.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_type.c___save_parsed_type_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"=struct\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"=union\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @__save_parsed_type_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__save_parsed_type_size(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @r_return_if_fail(i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %90

22:                                               ; preds = %14
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = call i8* @strstr(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %35, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br label %37

37:                                               ; preds = %30, %23
  %38 = phi i1 [ true, %23 ], [ %36, %30 ]
  br i1 %38, label %39, label %87

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8*, i8** %6, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %87

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %62, %48
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %8, align 8
  br label %51

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @save_type_size(i32 %76, i8* %77)
  %79 = load i8*, i8** %6, align 8
  store i8 61, i8* %79, align 1
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8*, i8** %5, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %7, align 4
  br label %23

87:                                               ; preds = %47, %37
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %87, %14
  ret void
}

declare dso_local i32 @r_return_if_fail(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @save_type_size(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

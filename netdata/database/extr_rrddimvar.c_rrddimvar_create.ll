; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrddimvar.c_rrddimvar_create.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrddimvar.c_rrddimvar_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i8*, i32, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@D_VARIABLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"RRDDIMSET create for chart id '%s' name '%s', dimension id '%s', name '%s%s%s'\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @rrddimvar_create(%struct.TYPE_9__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %19 = load i32, i32* @D_VARIABLES, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i8*, i8** %9, align 8
  br label %34

33:                                               ; preds = %6
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i8* [ %32, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i8*, i8** %10, align 8
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = call i32 @debug(i32 %19, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i8* %35, i32 %38, i8* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %54

54:                                               ; preds = %53, %50
  %55 = call i64 @callocz(i32 1, i32 56)
  %56 = inttoptr i64 %55 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %14, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i8* @strdupz(i8* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @strdupz(i8* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = call i32 @rrddimvar_create_variables(%struct.TYPE_8__* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  ret %struct.TYPE_8__* %87
}

declare dso_local i32 @debug(i32, i8*, i32, i32, i32, i8*, i32, i8*) #1

declare dso_local i64 @callocz(i32, i32) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @rrddimvar_create_variables(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

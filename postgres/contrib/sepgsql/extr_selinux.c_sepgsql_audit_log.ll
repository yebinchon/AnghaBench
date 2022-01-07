; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_audit_log.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_selinux.c_sepgsql_audit_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32 }

@SEPG_CLASS_MAX = common dso_local global i64 0, align 8
@selinux_catalog = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s {\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"denied\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c" scontext=%s tcontext=%s tclass=%s\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c" name=\22%s\22\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"SELinux: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sepgsql_audit_log(i32 %0, i8* %1, i8* %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* @SEPG_CLASS_MAX, align 8
  %19 = icmp ult i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @selinux_catalog, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %14, align 8
  %27 = call i32 @initStringInfo(%struct.TYPE_8__* %13)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %66, %6
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @selinux_catalog, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %33
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %16, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = and i64 %46, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @selinux_catalog, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %52, %45
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %33

69:                                               ; preds = %33
  %70 = call i32 @appendStringInfoString(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %71, i8* %72, i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 (%struct.TYPE_8__*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_8__* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i32, i32* @LOG, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @errmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = call i32 @ereport(i32 %81, i32 %84)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i8*, ...) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c_nto_send_env.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_core.c_nto_send_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DS_DATA_MAX_SIZE = common dso_local global i32 0, align 4
@DStMsg_env = common dso_local global i32 0, align 4
@DSMSG_ENV_SETENV_MORE = common dso_local global i32 0, align 4
@SET_CHANNEL_DEBUG = common dso_local global i32 0, align 4
@DStMsg_env_t = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Protovers < 0.2 do not handle env vars longer than %d\0A\00", align 1
@DSMSG_ENV_SETENV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nto_send_env(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %95

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %60

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = load i32, i32* @DStMsg_env, align 4
  %27 = load i32, i32* @DSMSG_ENV_SETENV_MORE, align 4
  %28 = load i32, i32* @SET_CHANNEL_DEBUG, align 4
  %29 = call i32 @nto_send_init(%struct.TYPE_11__* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %41 = call i32 @memcpy(i32 %35, i8* %39, i32 %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = load i32, i32* @DStMsg_env_t, align 4
  %44 = load i32, i32* @data, align 4
  %45 = call i64 @offsetof(i32 %43, i32 %44)
  %46 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @nto_send(%struct.TYPE_11__* %42, i64 %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %95

52:                                               ; preds = %24
  %53 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %20

59:                                               ; preds = %20
  br label %69

60:                                               ; preds = %11
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @DS_DATA_MAX_SIZE, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @eprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 0, i32* %3, align 4
  br label %95

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = load i32, i32* @DStMsg_env, align 4
  %72 = load i32, i32* @DSMSG_ENV_SETENV, align 4
  %73 = load i32, i32* @SET_CHANNEL_DEBUG, align 4
  %74 = call i32 @nto_send_init(%struct.TYPE_11__* %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @memcpy(i32 %80, i8* %84, i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = load i32, i32* @DStMsg_env_t, align 4
  %89 = load i32, i32* @data, align 4
  %90 = call i64 @offsetof(i32 %88, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @nto_send(%struct.TYPE_11__* %87, i64 %93, i32 1)
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %69, %64, %51, %10
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nto_send_init(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @nto_send(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @eprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

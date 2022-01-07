; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_write.c_cmd_wf.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_write.c_cmd_wf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Usage: wf [file] ([size] ([offset]))\0A\00", align 1
@help_msg_wf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @cmd_wf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_wf(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 63
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = call i32 @eprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32, i32* @help_msg_wf, align 4
  %27 = call i32 @r_core_cmd_help(%struct.TYPE_8__* %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %87

28:                                               ; preds = %17
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 115
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i32 @cmd_wfs(%struct.TYPE_8__* %35, i8* %37)
  store i32 %38, i32* %3, align 4
  br label %87

39:                                               ; preds = %28
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 102
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @cmd_wff(%struct.TYPE_8__* %46, i8* %48)
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %39
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i8* @r_str_trim_dup(i8* %52)
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @strchr(i8* %54, i8 signext 32)
  store i8* %55, i8** %7, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 0, i8* %62, align 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i8* @r_num_math(i32 %66, i8* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %61, %50
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @r_num_math(i32 %73, i8* %74)
  store i8* %75, i8** %9, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ioMemcpy(%struct.TYPE_8__* %76, i32 %79, i8* %80, i32 %81)
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = call i32 @r_core_block_read(%struct.TYPE_8__* %85)
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %70, %45, %34, %23, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cmd_wfs(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @cmd_wff(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @r_str_trim_dup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @r_num_math(i32, i8*) #1

declare dso_local i32 @ioMemcpy(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_core_block_read(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

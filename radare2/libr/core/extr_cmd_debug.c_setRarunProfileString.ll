; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_setRarunProfileString.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_setRarunProfileString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"rarun2\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dbg.profile\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @setRarunProfileString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setRarunProfileString(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i8* @r_file_temp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @r_config_set(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @r_str_replace_char(i8* %15, i8 signext 44, i8 signext 10)
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @r_file_dump(i8* %17, i32* %19, i32 %21, i32 0)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @r_file_dump(i8* %23, i32* bitcast ([2 x i8]* @.str.2 to i32*), i32 1, i32 1)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @free(i8* %25)
  ret void
}

declare dso_local i8* @r_file_temp(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_config_set(i32, i8*, i8*) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @r_file_dump(i8*, i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

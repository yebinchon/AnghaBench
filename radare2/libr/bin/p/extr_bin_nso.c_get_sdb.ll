; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_nso.c_get_sdb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_nso.c_get_sdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"nso_start.offset\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"nso_start.size\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"nso_start.format\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"xxq unused mod_memoffset padding\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"nso_header.offset\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"nso_header.size\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"nso_header.format\00", align 1
@.str.7 = private unnamed_addr constant [109 x i8] c"xxxxxxxxxxxx magic unk size unk2 text_offset text_size ro_offset ro_size data_offset data_size bss_size unk3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @get_sdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_sdb(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32* (...) @sdb_new0()
  store i32* %4, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @sdb_num_set(i32* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @sdb_num_set(i32* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 16, i32 0)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @sdb_set(i32* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @sdb_num_set(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @sdb_num_set(i32* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 64, i32 0)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @sdb_set(i32* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @sdb_ns_set(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %20)
  %22 = load i32*, i32** %3, align 8
  ret i32* %22
}

declare dso_local i32* @sdb_new0(...) #1

declare dso_local i32 @sdb_num_set(i32*, i8*, i32, i32) #1

declare dso_local i32 @sdb_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @sdb_ns_set(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

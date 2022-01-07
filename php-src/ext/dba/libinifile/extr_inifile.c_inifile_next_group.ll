; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_next_group.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libinifile/extr_inifile.c_inifile_next_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32*, i32* }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i64*)* @inifile_next_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inifile_next_group(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @FAILURE, align 4
  store i32 %9, i32* %7, align 4
  %10 = bitcast %struct.TYPE_16__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @php_stream_tell(i32 %13)
  %15 = load i64*, i64** %6, align 8
  store i64 %14, i64* %15, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @estrdup(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %33, %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = call i64 @inifile_read(%struct.TYPE_18__* %23, %struct.TYPE_16__* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = call i32 @inifile_key_cmp(%struct.TYPE_13__* %27, %struct.TYPE_17__* %28)
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @SUCCESS, align 4
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @php_stream_tell(i32 %36)
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  br label %22

39:                                               ; preds = %31, %22
  %40 = call i32 @inifile_line_free(%struct.TYPE_16__* %8)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @php_stream_tell(i32) #2

declare dso_local i32 @estrdup(i32) #2

declare dso_local i64 @inifile_read(%struct.TYPE_18__*, %struct.TYPE_16__*) #2

declare dso_local i32 @inifile_key_cmp(%struct.TYPE_13__*, %struct.TYPE_17__*) #2

declare dso_local i32 @inifile_line_free(%struct.TYPE_16__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

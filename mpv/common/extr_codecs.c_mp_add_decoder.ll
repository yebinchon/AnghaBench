; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_codecs.c_mp_add_decoder.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_codecs.c_mp_add_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_decoder_list = type { i32, i32 }
%struct.mp_decoder_entry = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_add_decoder(%struct.mp_decoder_list* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.mp_decoder_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mp_decoder_entry, align 4
  %10 = alloca { i64, i32 }, align 4
  store %struct.mp_decoder_list* %0, %struct.mp_decoder_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %9, i32 0, i32 0
  %12 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %5, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @talloc_strdup(%struct.mp_decoder_list* %12, i8* %13)
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %9, i32 0, i32 1
  %16 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %5, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @talloc_strdup(%struct.mp_decoder_list* %16, i8* %17)
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.mp_decoder_entry, %struct.mp_decoder_entry* %9, i32 0, i32 2
  %20 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @talloc_strdup(%struct.mp_decoder_list* %20, i8* %21)
  store i32 %22, i32* %19, align 4
  %23 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %5, align 8
  %24 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %5, align 8
  %25 = getelementptr inbounds %struct.mp_decoder_list, %struct.mp_decoder_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %5, align 8
  %28 = getelementptr inbounds %struct.mp_decoder_list, %struct.mp_decoder_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = bitcast { i64, i32 }* %10 to i8*
  %31 = bitcast %struct.mp_decoder_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MP_TARRAY_APPEND(%struct.mp_decoder_list* %23, i32 %26, i32 %29, i64 %33, i32 %35)
  ret void
}

declare dso_local i32 @talloc_strdup(%struct.mp_decoder_list*, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.mp_decoder_list*, i32, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_quoted.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_cue.c_read_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.bstr*)* @read_quoted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_quoted(i8* %0, %struct.bstr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bstr*, align 8
  %6 = alloca %struct.bstr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bstr, align 4
  %9 = alloca %struct.bstr, align 4
  store i8* %0, i8** %4, align 8
  store %struct.bstr* %1, %struct.bstr** %5, align 8
  %10 = load %struct.bstr*, %struct.bstr** %5, align 8
  %11 = load %struct.bstr*, %struct.bstr** %5, align 8
  %12 = getelementptr inbounds %struct.bstr, %struct.bstr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bstr_lstrip(i32 %13)
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = bitcast %struct.bstr* %10 to i8*
  %17 = bitcast %struct.bstr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.bstr*, %struct.bstr** %5, align 8
  %19 = call i32 @eat_char(%struct.bstr* %18, i8 signext 34)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.bstr*, %struct.bstr** %5, align 8
  %24 = getelementptr inbounds %struct.bstr, %struct.bstr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bstrchr(i32 %25, i8 signext 34)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %51

30:                                               ; preds = %22
  %31 = load %struct.bstr*, %struct.bstr** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.bstr, %struct.bstr* %31, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bstr_splice(i32 %34, i32 0, i32 %32)
  %36 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.bstr*, %struct.bstr** %5, align 8
  %38 = load %struct.bstr*, %struct.bstr** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.bstr, %struct.bstr* %38, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bstr_cut(i32 %42, i32 %40)
  %44 = getelementptr inbounds %struct.bstr, %struct.bstr* %9, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = bitcast %struct.bstr* %37 to i8*
  %46 = bitcast %struct.bstr* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @bstrto0(i8* %47, i32 %49)
  store i8* %50, i8** %3, align 8
  br label %51

51:                                               ; preds = %30, %29, %21
  %52 = load i8*, i8** %3, align 8
  ret i8* %52
}

declare dso_local i32 @bstr_lstrip(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @eat_char(%struct.bstr*, i8 signext) #1

declare dso_local i32 @bstrchr(i32, i8 signext) #1

declare dso_local i32 @bstr_splice(i32, i32, i32) #1

declare dso_local i32 @bstr_cut(i32, i32) #1

declare dso_local i8* @bstrto0(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

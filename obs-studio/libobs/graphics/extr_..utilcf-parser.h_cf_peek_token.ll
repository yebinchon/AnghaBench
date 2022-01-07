; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utilcf-parser.h_cf_peek_token.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utilcf-parser.h_cf_peek_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.cf_token* }
%struct.cf_token = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, %struct.cf_token*)* @cf_peek_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_peek_token(%struct.cf_parser* %0, %struct.cf_token* %1) #0 {
  %3 = alloca %struct.cf_parser*, align 8
  %4 = alloca %struct.cf_token*, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca i32, align 4
  store %struct.cf_parser* %0, %struct.cf_parser** %3, align 8
  store %struct.cf_token* %1, %struct.cf_token** %4, align 8
  %7 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %8 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %7, i32 0, i32 0
  %9 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  store %struct.cf_token* %9, %struct.cf_token** %5, align 8
  %10 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %11 = call i32 @cf_next_token(%struct.cf_parser* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %13 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %14 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %13, i32 0, i32 0
  %15 = load %struct.cf_token*, %struct.cf_token** %14, align 8
  %16 = bitcast %struct.cf_token* %12 to i8*
  %17 = bitcast %struct.cf_token* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %19 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %20 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %19, i32 0, i32 0
  store %struct.cf_token* %18, %struct.cf_token** %20, align 8
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @cf_next_token(%struct.cf_parser*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

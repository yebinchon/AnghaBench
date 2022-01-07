; ModuleID = '/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_list.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_redis_array_impl.c_ra_move_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LRANGE\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@__const.ra_move_list.cmd_list = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"RPUSH\00", align 1
@__const.ra_move_list.cmd_add = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)], align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*, i64)* @ra_move_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ra_move_list(i8* %0, i32 %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i8*], align 16
  %12 = alloca [1 x i8*], align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = bitcast [3 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([3 x i8*]* @__const.ra_move_list.cmd_list to i8*), i64 24, i1 false)
  %14 = bitcast [1 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast ([1 x i8*]* @__const.ra_move_list.cmd_add to i8*), i64 8, i1 false)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %20 = getelementptr inbounds [1 x i8*], [1 x i8*]* %12, i64 0, i64 0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @ra_move_collection(i8* %15, i32 %16, i32* %17, i32* %18, i32 3, i8** %19, i32 1, i8** %20, i64 %21)
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ra_move_collection(i8*, i32, i32*, i32*, i32, i8**, i32, i8**, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

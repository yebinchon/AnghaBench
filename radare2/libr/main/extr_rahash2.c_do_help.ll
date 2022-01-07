; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_do_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_do_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [86 x i8] c"Usage: rahash2 [-rBhLkv] [-b S] [-a A] [-c H] [-E A] [-s S] [-f O] [-t O] [file] ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [1061 x i8] c" -a algo     comma separated list of algorithms (default is 'sha256')\0A -b bsize    specify the size of the block (instead of full file)\0A -B          show per-block hash\0A -c hash     compare with this hash\0A -e          swap endian (use little endian)\0A -E algo     encrypt. Use -S to set key and -I to set IV\0A -D algo     decrypt. Use -S to set key and -I to set IV\0A -f from     start hashing at given address\0A -i num      repeat hash N iterations\0A -I iv       use give initialization vector (IV) (hexa or s:string)\0A -S seed     use given seed (hexa or s:string) use ^ to prefix (key for -E)\0A             (- will slurp the key from stdin, the @ prefix points to a file\0A -k          show hash using the openssh's randomkey algorithm\0A -q          run in quiet mode (-qq to show only the hash)\0A -L          list all available algorithms (see -a)\0A -r          output radare commands\0A -s string   hash this string instead of files\0A -t to       stop hashing at given address\0A -x hexstr   hash this hexpair string instead of files\0A -v          show version information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_help(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

8:                                                ; preds = %1
  %9 = call i32 @printf(i8* getelementptr inbounds ([1061 x i8], [1061 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %7
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

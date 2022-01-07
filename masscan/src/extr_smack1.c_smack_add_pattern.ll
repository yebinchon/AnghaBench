; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_add_pattern.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_add_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i32, i32, i32, i32, %struct.SmackPattern**, i32 }
%struct.SmackPattern = type { i32, i32, i32, i32, i32, i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: out of memory error\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"smack\00", align 1
@SMACK_ANCHOR_BEGIN = common dso_local global i32 0, align 4
@SMACK_ANCHOR_END = common dso_local global i32 0, align 4
@SMACK_SNMP_HACK = common dso_local global i32 0, align 4
@SMACK_WILDCARDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\80\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smack_add_pattern(%struct.SMACK* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.SMACK*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.SmackPattern*, align 8
  %13 = alloca %struct.SmackPattern**, align 8
  %14 = alloca i32, align 4
  store %struct.SMACK* %0, %struct.SMACK** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %11, align 8
  %16 = call i64 @malloc(i32 40)
  %17 = inttoptr i64 %16 to %struct.SmackPattern*
  store %struct.SmackPattern* %17, %struct.SmackPattern** %12, align 8
  %18 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %19 = icmp eq %struct.SmackPattern* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %27 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SMACK_ANCHOR_BEGIN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ugt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %34 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SMACK_ANCHOR_END, align 4
  %37 = and i32 %35, %36
  %38 = icmp ugt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %41 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @SMACK_SNMP_HACK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ugt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %48 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SMACK_WILDCARDS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ugt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %55 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %58 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %62 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @make_copy_of_pattern(i8* %59, i32 %60, i32 %63)
  %65 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %66 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %68 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %24
  %72 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %73 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %24
  %75 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %76 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %81 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @smack_add_symbols(%struct.SMACK* %83, i8* %84, i32 %85)
  %87 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %88 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %93 = call i32 @smack_add_symbols(%struct.SMACK* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %94

94:                                               ; preds = %91, %82
  %95 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %96 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %100 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %103, label %149

103:                                              ; preds = %94
  %104 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %105 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 2
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = mul i64 8, %110
  %112 = trunc i64 %111 to i32
  %113 = call i64 @malloc(i32 %112)
  %114 = inttoptr i64 %113 to %struct.SmackPattern**
  store %struct.SmackPattern** %114, %struct.SmackPattern*** %13, align 8
  %115 = load %struct.SmackPattern**, %struct.SmackPattern*** %13, align 8
  %116 = icmp eq %struct.SmackPattern** %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %103
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %103
  %122 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %123 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %122, i32 0, i32 4
  %124 = load %struct.SmackPattern**, %struct.SmackPattern*** %123, align 8
  %125 = icmp ne %struct.SmackPattern** %124, null
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load %struct.SmackPattern**, %struct.SmackPattern*** %13, align 8
  %128 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %129 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %128, i32 0, i32 4
  %130 = load %struct.SmackPattern**, %struct.SmackPattern*** %129, align 8
  %131 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %132 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = mul i64 8, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(%struct.SmackPattern** %127, %struct.SmackPattern** %130, i32 %136)
  %138 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %139 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %138, i32 0, i32 4
  %140 = load %struct.SmackPattern**, %struct.SmackPattern*** %139, align 8
  %141 = call i32 @free(%struct.SmackPattern** %140)
  br label %142

142:                                              ; preds = %126, %121
  %143 = load %struct.SmackPattern**, %struct.SmackPattern*** %13, align 8
  %144 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %145 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %144, i32 0, i32 4
  store %struct.SmackPattern** %143, %struct.SmackPattern*** %145, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %148 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %94
  %150 = load %struct.SmackPattern*, %struct.SmackPattern** %12, align 8
  %151 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %152 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %151, i32 0, i32 4
  %153 = load %struct.SmackPattern**, %struct.SmackPattern*** %152, align 8
  %154 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %155 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.SmackPattern*, %struct.SmackPattern** %153, i64 %157
  store %struct.SmackPattern* %150, %struct.SmackPattern** %158, align 8
  %159 = load %struct.SMACK*, %struct.SMACK** %6, align 8
  %160 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @make_copy_of_pattern(i8*, i32, i32) #1

declare dso_local i32 @smack_add_symbols(%struct.SMACK*, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.SmackPattern**, %struct.SmackPattern**, i32) #1

declare dso_local i32 @free(%struct.SmackPattern**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_parse_mips_dis_option.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/mips/gnu/extr_mips-dis.c_parse_mips_dis_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_abi_choice = type { i32, i32 }
%struct.mips_arch_choice = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"gpr-names\00", align 1
@mips_gpr_names = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"fpr-names\00", align 1
@mips_fpr_names = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"cp0-names\00", align 1
@mips_cp0_names = common dso_local global i32 0, align 4
@mips_cp0sel_names = common dso_local global i32 0, align 4
@mips_cp0sel_names_len = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"hwr-names\00", align 1
@mips_hwr_names = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @parse_mips_dis_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mips_dis_option(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mips_abi_choice*, align 8
  %10 = alloca %struct.mips_arch_choice*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 61
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %181

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %181

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sub i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %181

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8* %49, i8** %8, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  %53 = sub i32 %50, %52
  store i32 %53, i32* %7, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %43
  %59 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.mips_abi_choice* @choose_abi_by_name(i8* %63, i32 %64)
  store %struct.mips_abi_choice* %65, %struct.mips_abi_choice** %9, align 8
  %66 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %67 = icmp ne %struct.mips_abi_choice* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %70 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* @mips_gpr_names, align 4
  br label %72

72:                                               ; preds = %68, %62
  br label %181

73:                                               ; preds = %58, %43
  %74 = load i8*, i8** %3, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call %struct.mips_abi_choice* @choose_abi_by_name(i8* %83, i32 %84)
  store %struct.mips_abi_choice* %85, %struct.mips_abi_choice** %9, align 8
  %86 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %87 = icmp ne %struct.mips_abi_choice* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %90 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* @mips_fpr_names, align 4
  br label %92

92:                                               ; preds = %88, %82
  br label %181

93:                                               ; preds = %78, %73
  %94 = load i8*, i8** %3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call %struct.mips_arch_choice* @choose_arch_by_name(i8* %103, i32 %104)
  store %struct.mips_arch_choice* %105, %struct.mips_arch_choice** %10, align 8
  %106 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %107 = icmp ne %struct.mips_arch_choice* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %110 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* @mips_cp0_names, align 4
  %112 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %113 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* @mips_cp0sel_names, align 4
  %115 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %116 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* @mips_cp0sel_names_len, align 4
  br label %118

118:                                              ; preds = %108, %102
  br label %181

119:                                              ; preds = %98, %93
  %120 = load i8*, i8** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %120, i32 %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call %struct.mips_arch_choice* @choose_arch_by_name(i8* %129, i32 %130)
  store %struct.mips_arch_choice* %131, %struct.mips_arch_choice** %10, align 8
  %132 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %133 = icmp ne %struct.mips_arch_choice* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %136 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* @mips_hwr_names, align 4
  br label %138

138:                                              ; preds = %134, %128
  br label %181

139:                                              ; preds = %124, %119
  %140 = load i8*, i8** %3, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %140, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %181

144:                                              ; preds = %139
  %145 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %144
  %149 = load i8*, i8** %8, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call %struct.mips_abi_choice* @choose_abi_by_name(i8* %149, i32 %150)
  store %struct.mips_abi_choice* %151, %struct.mips_abi_choice** %9, align 8
  %152 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %153 = icmp ne %struct.mips_abi_choice* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %156 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* @mips_gpr_names, align 4
  %158 = load %struct.mips_abi_choice*, %struct.mips_abi_choice** %9, align 8
  %159 = getelementptr inbounds %struct.mips_abi_choice, %struct.mips_abi_choice* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* @mips_fpr_names, align 4
  br label %161

161:                                              ; preds = %154, %148
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call %struct.mips_arch_choice* @choose_arch_by_name(i8* %162, i32 %163)
  store %struct.mips_arch_choice* %164, %struct.mips_arch_choice** %10, align 8
  %165 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %166 = icmp ne %struct.mips_arch_choice* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %169 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* @mips_cp0_names, align 4
  %171 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %172 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* @mips_cp0sel_names, align 4
  %174 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %175 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* @mips_cp0sel_names_len, align 4
  %177 = load %struct.mips_arch_choice*, %struct.mips_arch_choice** %10, align 8
  %178 = getelementptr inbounds %struct.mips_arch_choice, %struct.mips_arch_choice* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* @mips_hwr_names, align 4
  br label %180

180:                                              ; preds = %167, %161
  br label %181

181:                                              ; preds = %31, %36, %42, %72, %92, %118, %138, %180, %144, %139
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.mips_abi_choice* @choose_abi_by_name(i8*, i32) #1

declare dso_local %struct.mips_arch_choice* @choose_arch_by_name(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
